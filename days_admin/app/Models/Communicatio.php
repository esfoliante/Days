<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;


class Communicatio extends Model
{
    use WithImageUpload;

    protected $table = "communications";



    protected $fillable = [
        'title',
		'content',

    ];

    protected $dates = [
        'created_at'
    ];





}
