<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Student extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'internal_number' => $this->internal_number,
            'limitation' => $this->limitation,
            'allergies' => $this->allergies,
            'emergency_contact' => $this->emergency_contact,
            'cc' => $this->cc,
            'residence' => $this->residence,
            'birthday' => $this->birthday,
            'first_login' => $this->first_login,
            'transaction_total' => $this->movements_sum,
            'tutor' => $this->tutor,
            'course' => $this->course,
            'entrance' => $this->entrance,
            'absences' => $this->absences,
            'notices' => $this->notices,
            'assessments' => new AssessmentCollection($this->class->assessments) ?? [],
        ];
    }
}
