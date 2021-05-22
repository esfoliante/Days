<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    use HasFactory;

     $fillable = [
        'name',
        'biography',
        'age',
        'role',
        'tags',
        'email',
        'password',
    ];
}
