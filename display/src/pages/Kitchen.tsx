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
    state: OrderItemState

    dish?: IDish
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
    useEffect(() => {
        function onItemsUpdate(items: []) {
            setCookingItems(items)
        }
        
        socket.emit("subscribe-cooking-items")
        socket.on("cooking-items", (items) => {
            console.log("items arrived")
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
            <h1>Kitchen</h1>
            {
                cookingItems.map(i => 
                    <p>{ i?.dish?.name ?? "some dish" }</p>)
            }
            <div>end</div>
        </div>
    )
}

export default Kitchen