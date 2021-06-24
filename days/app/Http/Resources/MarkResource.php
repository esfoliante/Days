<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

/** @mixin \App\Models\Mark */
class MarkResource extends JsonResource
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'student_id' => $this->student_id,
            'subject_id' => $this->subject_id,
            'year' => $this->year,
            'term' => $this->term,
            'mark' => $this->mark,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
