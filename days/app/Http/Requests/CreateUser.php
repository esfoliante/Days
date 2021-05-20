<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateUser extends FormRequest
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
            'internal_number' => 'nullable|integer|unique:users',
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'nullable|string|confirmed|min:8',
            'profile_picture' => 'string|nullable',
            'role_id' => 'required|integer|exists:roles,id',
            'cc' => 'required|string|min:8|unique:users',
            'contact' => 'required|string|max:15|unique:users',
        ];
    }
}
