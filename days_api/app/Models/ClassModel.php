<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassModel extends Model
{

    use HasFactory;

    protected $table = 'classes';

    protected $fillable = [
        'name',
        'course_id',
        'year',
        'user_id',
        'student_id',
    ];

}
