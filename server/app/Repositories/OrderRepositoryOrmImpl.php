<?php

namespace App\Repositories;

use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Waiter;
use App\Interfaces\OrderRepository;

class OrderRepositoryOrmImpl implements OrderRepository {

    public function createOrder($waiterId, $items): Order {
        $order = new Order;
        $order->waiter_id = $waiterId;
        $order->save();
        $order->orderItems()->createMany($items);
        $order->with('orderItems.dish')->get();
        return $order;
    }

    public function getOrders(): array {
        return Order::with('orderItems.dish')->get()->toArray();
    }
}