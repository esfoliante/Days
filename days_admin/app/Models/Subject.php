<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class Subject extends Model
{
    use WithImageUpload;

    protected $table = "subjects";

    

    protected $fillable = [
        'name',
		
    ];

    protected $dates = [
        'created_at'
    ];

    
    


}
