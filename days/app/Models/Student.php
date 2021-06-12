<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use App\Http\Resources\NoticeResource;
use Illuminate\Support\Facades\DB;

class Student extends Authenticatable
{
    use HasFactory, Notifiable, HasApiTokens;

    protected $fillable = [
        'internal_number',
        'name',
        'email',
        'password',
        'tutor_id',
        'course_id',
        'class_id',
        'limitation',
        'allergies',
        'emergency_contact',
        'cc',
        'residence',
        'birthday',
        'first_login',
    ];

    protected $hidden = ['password'];

    /**
     * Route notifications for the mail channel.
     *
     * @param \Illuminate\Notifications\Notification $notification
     * @return array|string
     */
    public function routeNotificationForMail($notification)
    {
        return [$this->email => $this->name];
    }

    public function entrances()
    {
        return $this->hasMany(Entrance::class);
    }

    public function class()
    {
        return $this->belongsTo(ClassModel::class, 'class_id');
    }

    public function accountMovements()
    {
        return $this->hasMany(AccountMovement::class);
    }

    public function getMovementsSumAttribute()
    {
        $movements = $this->accountMovements;
        $total = 0;

        foreach ($movements as $movement) {
            $movement->is_debt
                ? ($total -= $movement->amount)
                : ($total += $movement->amount);
        }

        return $total . '€';
    }

    public function getTokenStudentAttribute()
    {
        return $this->hasMany(AccountMovement::class);
    }

    public function tutor()
    {
        return $this->belongsTo(User::class);
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function entrance()
    {
        return $this->hasMany(Entrance::class);
    }

    public function absences()
    {
        return $this->hasMany(Absence::class);
    }

    public function notices()
    {
        return $this->hasMany(Notice::class);
    }

    public function communications()
    {
        return $this->belongsToMany(Communication::class);
    }

}
