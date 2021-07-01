<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class Tutor extends Model
{
    use WithImageUpload;

    protected $table = "tutors";

    

    protected $fillable = [
        'name',
		'email',
		'password',
		'contact',
		'profession',
		'cc',
		'nif',
		'residence',
		'birthday',
		
    ];

    protected $dates = [
        'created_at'
    ];

    
    public function setPasswordAttribute($value) {
        if(!empty($value)) {
            $this->attributes['password'] = Hash::make($value);
        }
    }

	


}
