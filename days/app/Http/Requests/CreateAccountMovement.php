<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateAccountMovement extends FormRequest
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
            'user_id' => 'integer|nullable|exists:users,id',
            'student_id' => 'integer|nullable|exists:students,id',
            'amount' => 'required|numeric',
            'is_debt' => 'required|boolean',
            'location' => 'required|string',
        ];
    }
}
