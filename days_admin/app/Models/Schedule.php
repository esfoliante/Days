<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class Schedule extends Model
{
    use WithImageUpload;

    protected $table = "schedules";

    

    protected $fillable = [
        'class_id',
		
    ];

    protected $dates = [
        'created_at'
    ];

    public function schoolClass() {
        return $this->belongsTo('App\Models\SchoolClass', 'class_id');
    }

	
    


}
