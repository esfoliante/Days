<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ScheduleResource extends JsonResource
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'subject' => $this->subject->name,
            'starts_at' => $this->starts_at,
            'ends_at' => $this->ends_at,
            'day_week' => $this->day_week,
        ];
    }
}
