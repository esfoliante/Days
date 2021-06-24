<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mark extends Model
{

    use HasFactory;

    protected $fillable = [
        'student_id',
        'subject_id',
        'year',
        'term',
        'mark',
    ];

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

}
