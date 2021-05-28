<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AccountMovement extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'user_id' => $this->user_id,
            'student_id' => $this->student_id,
            'amount' => $this->amount,
            'is_debt' => $this->is_debt,
            'location' => $this->location,
        ];
    }
}
