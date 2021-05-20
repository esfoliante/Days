<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommunicationStudents extends Model
{
    use HasFactory;

    protected $table = 'communication_student';

    protected $fillable = [
        'communication_id',
        'student_id',
    ];

}
