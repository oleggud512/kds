<?php

namespace Database\Seeders;

use App\Models\Waiter;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WaiterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $waiters = [
            'Іван',
            'Марія',
            'Олексій',
            'Тетяна',
            'Віталій',
            'Оксана',
            'Петро',
            'Анна',
            'Максим',
            'Юлія',
        ];

        foreach ($waiters as $name) {
            Waiter::create([
                'name' => $name,
            ]);
        }
    }
}
