<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateClass extends FormRequest
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
            'name' => 'required|string|nullable|max:255',
            'course_id' => 'required|integer|exists:courses,id',
            'year' => 'required|integer',
            'user_id' => 'required|integer|exists:users,id',
            'student_id' => 'required|integer|exists:students,id',
        ];
    }
}
