<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Staudenmeir\EloquentHasManyDeep\HasRelationships;

class ClassModel extends Model
{
    use HasFactory;
    use HasRelationships;

    protected $table = 'classes';

    protected $fillable = [
        'name',
        'course_id',
        'year',
        'user_id',
        'student_id',
    ];

    public function assessments()
    {
        return $this->hasMany(Assessment::class, 'class_id');
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class)->name;
    }

}
