<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'brand',
        'model',
        'plate_number',
        'daily_rate',
        'is_available'
    ];

    public function rental()
    {
        return $this->hasMany(Rental::class);
    }
}