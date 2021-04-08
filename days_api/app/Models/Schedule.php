<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    use HasFactory;

    protected $fillable = [
        'class_id',
        'classroom_id',
        'subject_id',
        'user_id',
        'starts_at',
        'ends_at',
        'day_week',
    ];

}
