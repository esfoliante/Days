<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateTutor extends FormRequest
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
            'email' => 'required|string|email|max:255|unique:tutors',
            'password' => 'required|string|confirmed|min:8',
            'contact' => 'required|string|max:15|unique:tutors',
            'student_relationship' => 'required|string',
            'profession' => 'required|string',
            'cc' => 'required|string|min:8|unique:tutors',
            'NIF' => 'required|string|min:8|unique:tutors|min:9',
            'residence' => 'required|string',
        ];
    }
}
