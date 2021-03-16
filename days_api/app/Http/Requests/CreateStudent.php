<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateStudent extends FormRequest
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
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:students',
            'password' => 'required|string|confirmed|min:8',
            'tutor_id' => 'required|integer|exists:tutors,id',
            'course_id' => 'required|integer|exists:courses,id',
            'limitation' => 'string|nullable|max:255',
            'allergies' => 'string|nullable|max:255',
            'emergency_contact' => 'required|string',
            'cc' => 'required|string|min:8|unique:students',
            'residence' => 'required|string',
        ];
    }
}
