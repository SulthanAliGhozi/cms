<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PhpParser\Node\Expr\Cast;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        "description" => "array",
    ];
}
