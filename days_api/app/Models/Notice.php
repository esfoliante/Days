<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    use HasFactory;

    protected $fillable = [
        'reason',
        'description',
        'user_id',
        'student_id',
        'occurrence_date',
    ];

}
