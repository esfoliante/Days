<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Classes extends JsonResource
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
            'name' => $this->name,
            'course_id' => $this->course_id,
            'year' => $this->year,
            'user_id' => $this->user_id,
            'student_id' => $this->user_id,
            'assessments' => $this->assessments,
        ];
    }
}
