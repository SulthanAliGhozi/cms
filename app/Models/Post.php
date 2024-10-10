<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [];

    //laravel 10
    protected $casts = [
        'description' => 'array'
    ];

    //casts for laravel 11
    // protected function casts(): array
    // {
    //     return [
    //         'description' => 'array'
    //     ];
    // }
}
