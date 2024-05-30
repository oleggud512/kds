export interface CreateOrderItem {
  comment?: string
  dishId: number
  count: number
}

export interface CreateOrder {
  waiterId: number
  items: CreateOrderItem[]
}