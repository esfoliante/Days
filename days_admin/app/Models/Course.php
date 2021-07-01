<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use WithImageUpload;

    protected $table = 'courses';

    protected $fillable = ['name', 'slug'];

    protected $dates = ['created_at'];

    public function user()
    {
        return $this->belongsTo('App\Models\User', 'user_id');
    }
}
