<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class OrderItem extends Model
{
    use HasFactory;

    public function order(): BelongsTo {
        return $this->belongsTo(Order::class, 'id', 'order_id');
    }

    public function dish(): HasOne {
        return $this->hasOne(Dish::class, 'id', 'dish_id');
    }
}
