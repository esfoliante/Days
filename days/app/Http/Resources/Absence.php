<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Absence extends JsonResource
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
            'class_name' => $this->class->name,
            'absence_date' => $this->absence_date,
        ];
    }
}
