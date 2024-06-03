import axios from "axios"
import { useEffect, useState } from "react"
import { io } from "socket.io-client"

const socket = io("http://127.0.0.1:3000/cooking-items")

enum OrderItemState {
    cooking = 'cooking',
    ready = 'ready',
    inProgress = 'inProgress'
}

enum OrderState {
    inProgress = 'inProgress',
    closed = 'closed'
}

interface IWaiter {
    id: number
    name: string
    phoneNumber: string
}

interface IDish {
    id: number
    name: string
    category: string
    price: number
}

interface IOrderItem {
    dishId: number
    orderId: number
    price: number
    comment: string
    count: number
    state: OrderItemState

    dish?: IDish
    order?: IOrder
}

interface IOrder {
    id: number
    waiterId: number
    total?: number
    date: Date
    state: OrderState

    items?: IOrderItem[]
    waiter?: IWaiter
}

function Kitchen() {
    const [cookingItems, setCookingItems] = useState<IOrderItem[]>([])
    console.log("build")

    async function setReady(orderId: number, dishId: number) {
        await axios.patch(`http://127.0.0.1:3000/api/v1/orders/${orderId}/items/${dishId}`, {
            state: "ready"
        })
    }

    useEffect(() => {
        function onItemsUpdate(items: []) {
            setCookingItems(items)
        }
        
        socket.emit("subscribe-cooking-items")
        socket.on("cooking-items", (items) => {
            console.log("items arrived")
            console.log(items)
            onItemsUpdate(items)
        })

        return () => {
            console.log("off")
            socket.emit("unsubscribe-cooking-items")
            socket.off("cooking-items")
        }
    }, [])
    
    return (
        <div>
            <h1 className="text-center p-4 text-2xl">Замовлення</h1>
            <li className="px-4 list-none flex flex-col space-y-4 lg:max-w-[1000px] mx-auto">
            {
                cookingItems.map(i => 
                    <ul className="bg-slate-100 shadow-md p-4 rounded-lg flex flex-col sm:flex-row sm:justify-between">
                        <div>
                            <div className="font-bold">
                                { i?.dish?.name ?? "some dish" } × { i.count }
                            </div>
                            <div>
                                Замовлення #{ idToString(i.orderId) }
                            </div>
                            <div>
                                Офіціант: { i.order?.waiter?.name }
                            </div>
                            <div className="text-slate-500">
                                {i.comment}
                            </div>
                        </div>
                        <button 
                            className="p-2 rounded-md bg-indigo-500 text-white place-self-end"
                            onClick={ () => setReady(i.orderId, i.dishId) }>
                            Виконано
                        </button>
                    </ul>
                )
            }
            </li>
        </div>
    )
}

function idToString(id: number) : string {
    const str = id.toString()
    const res = str.length < 3
        ? str.padStart(3, "0")
        : str.substring(0, 3)
    return res
}

export default Kitchen