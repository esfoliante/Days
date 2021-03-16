<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'password',
        'tutor_id',
        'course_id',
        'limitation',
        'allergies',
        'emergency_contact',
        'cc',
        'residence',
    ];

    protected $hidden = [
        'password',
    ];

}
