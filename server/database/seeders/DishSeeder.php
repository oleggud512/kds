<?php

namespace Database\Seeders;

use App\Models\Dish;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DishSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $dishes = [
            'Борщ' => 'Перші страви',
            'Вареники' => 'Перші страви',
            'Салат "Олів\'є"' => 'Салати',
            'Гаспачо' => 'Перші страви',
            'Блинчики' => 'Другі страви',
            'Котлети по-київськи' => 'Другі страви',
            'Медовик' => 'Десерти',
            'Морс' => 'Напої',
            'Суп-лапша' => 'Перші страви',
            'Шарлотка' => 'Десерти',
            'Гарбузова каша' => 'Другі страви',
            'Свіжий сік' => 'Напої',
            'Томатний суп' => 'Перші страви',
            'Сирники' => 'Десерти',
            'Цезар' => 'Салати',
            'Млинці' => 'Десерти',
            'Панакота' => 'Десерти',
            'Фруктовий салат' => 'Салати',
            'Лимонад' => 'Напої',
            'Чізкейк' => 'Десерти',
        ];

        foreach ($dishes as $name => $category) {
            Dish::create([
                'name' => $name,
                'category' => $category,
            ]);
        }

    }
}
