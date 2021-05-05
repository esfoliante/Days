<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccountMovement extends Model
{
    use HasFactory;

    protected $table = 'account_movements';

    protected $fillable = [
        'user_id',
        'student_id',
        'amount',
        'transaction_type',
        'location',
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function student() {
        return $this->belongsTo(Student::class);
    }

}
