<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class SchoolClass extends Model
{
    use WithImageUpload;

    protected $table = "classes";



    protected $fillable = [
        'name',
		'year',
		'course_id',

    ];

    protected $dates = [
        'created_at'
    ];

    public function course() {
        return $this->belongsTo('App\Models\Course', 'course_id');
    }





}
