<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Student extends Model
{
    use HasFactory, Notifiable;

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
        'first_login'
    ];

    protected $hidden = [
        'password',
    ];

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

}
