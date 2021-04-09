<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateSchedule extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'class_id' => 'required|integer|exists:classes,id',
            'classroom_id' => 'required|integer|exists:classrooms,id',
            'subject_id' => 'required|integer|exists:subjects,id',
            'user_id' => 'required|integer|exists:users,id',
            'starts_at' => 'required|string',
            'ends_at' => 'required|string',
            'day_week' => 'required|string',
        ];
    }
}
