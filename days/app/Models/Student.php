<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use App\Http\Resources\NoticeResource;

class Student extends Model
{
    use HasFactory, Notifiable, HasApiTokens;

    protected $fillable = [
        'internal_number',
        'name',
        'email',
        'password',
        'tutor_id',
        'course_id',
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
        $tutor = $this->belongsTo(User::class);

        return $tutor;
    }

    public function course()
    {
        $course = $this->belongsTo(Course::class);

        return $course;
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
}
