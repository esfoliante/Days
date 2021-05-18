<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Entrance extends Model
{
    use HasFactory;

    protected $table = 'entrance';

    protected $fillable = [
        'student_id',
        'action_type',
    ];

}
