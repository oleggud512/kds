<?php

namespace App\Interfaces;

use App\Models\Order;

interface OrderRepository {
    public function createOrder($waiterId, $items) : Order;
    public function getOrders(): array;
}