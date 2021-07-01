<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class ParentModel extends Model
{
    use WithImageUpload;

    protected $table = "parentmodels";

    

    protected $fillable = [
        'name',
		'email',
		'contact',
		'profession',
		'cc',
		'nif',
		'residence',
		
    ];

    protected $dates = [
        'created_at'
    ];

    
    


}
