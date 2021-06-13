<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateMeetingStudent extends FormRequest
{
    public function rules()
    {
        return [
            'meeting_id' => 'required|integer|exists:meetings,id',
            'student_id' => 'required|integer|exists:students,id'
        ];
    }

    public function authorize()
    {
        return true;
    }
}
