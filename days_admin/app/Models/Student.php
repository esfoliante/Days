<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class Student extends Model
{
    use WithImageUpload;

    protected $table = "students";

    

    protected $fillable = [
        'name',
		'email',
		'password',
		'limitation',
		'allergies',
		'emergency_contact',
		'cc',
		'residence',
		'birthday',
		'course_id',
		'tutor_id',
		
    ];

    protected $dates = [
        'created_at'
    ];

    public function course() {
        return $this->belongsTo('App\Models\Course', 'course_id');
    }

	public function tutors() {
        return $this->belongsTo('App\Models\Tutor', 'tutor_id');
    }

	
    public function setPasswordAttribute($value) {
        if(!empty($value)) {
            $this->attributes['password'] = Hash::make($value);
        }
    }

	


}
