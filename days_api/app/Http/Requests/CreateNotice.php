<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateNotice extends FormRequest
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
            'reason' => 'required|string|max:70',
            'description' => 'required|string|max:255',
            'user_id' => 'required|integer|exists:users,id',
            'student_id' => 'required|integer|exists:students,id',
            'occurrence_date' => 'required|date',
        ];
    }
}
