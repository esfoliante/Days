<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class Classroom extends Model
{
    use WithImageUpload;

    protected $table = "classrooms";

    

    protected $fillable = [
        'department',
		'floor',
		'number',
		
    ];

    protected $dates = [
        'created_at'
    ];

    
    


}
