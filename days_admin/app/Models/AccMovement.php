<?php

namespace App\Models;

use App\Http\Traits\WithImageUpload;
use Illuminate\Database\Eloquent\Model;

class AccMovement extends Model
{
    use WithImageUpload;

    protected $table = 'account_movements';

    public const TRANSACTION_TYPE_SELECT = [
        '1' => 'Débito',
        '0' => 'Crédito',
    ];

    protected $fillable = ['student_id', 'amount', 'is_debt', 'location'];

    protected $dates = ['created_at'];

    public function student()
    {
        return $this->belongsTo('App\Models\Student', 'student_id');
    }
}
