<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Assessment extends Model
{
    use HasFactory;

    protected $fillable = [
        'class_id',
        'subject_id',
        'contents',
        'assessment_date',
    ];

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

}
