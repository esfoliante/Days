<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MealStudents extends Model
{
    use HasFactory;

    protected $table = "meals_students";

    protected $fillable = [
        'student_id',
        'meal_id'
    ];

}
