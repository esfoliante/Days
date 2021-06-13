<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MeetingStudent extends Model
{

    use HasFactory;

    protected $table = 'meeting_student';

    protected $fillable = [
        'meeting_id',
        'student_id'
    ];

}
