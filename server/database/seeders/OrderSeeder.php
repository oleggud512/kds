<?php

namespace Database\Seeders;

use App\Models\Order;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $orders = [
            [
                'waiter_id' => 1,
                'items' => [
                    [
                        'dish_id' => 1,
                        'amount' => 3,
                        'comment' => 'don\'t stew',
                    ],
                    [
                        'dish_id' => 2,
                        'amount' => 2,
                        'comment' => 'do something with it',
                    ],
                    [
                        'dish_id' => 3,
                        'amount' => 1,
                    ],
                ]    
            ],
            [
                'waiter_id' => 1,
                'items' => [
                    [
                        'dish_id' => 3,
                        'amount' => 1,
                        'comment' => 'other other comment comment',
                    ],
                    [
                        'dish_id' => 4,
                        'amount' => 2,
                        'comment' => 'something something',
                    ],
                    [
                        'dish_id' => 5,
                        'amount' => 3,
                    ],
                ]    
            ],
        ];

        foreach ($orders as $orderData) {
            $order = new Order;
            $order->waiter_id = $orderData['waiter_id'];
            $order->save();
            $order->orderItems()->createMany($orderData['items']);
        }
    }
}
