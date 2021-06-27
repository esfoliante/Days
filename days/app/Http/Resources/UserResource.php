<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/** @mixin \App\Models\User */
class UserResource extends JsonResource
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'internal_number' => $this->internal_number,
            'name' => $this->name,
            'email' => $this->email,
            'password' => $this->password,
            'profile_picture' => $this->profile_picture,
            'role_id' => $this->role_id,
            'cc' => $this->cc,
            'contact' => $this->contact,
            'birthday' => $this->birthday,
            'first_login' => $this->first_login,
            'remember_token' => $this->remember_token,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'notifications' => $this->notifications,
            'notifications_count' => $this->notifications_count,
        ];
    }
}
