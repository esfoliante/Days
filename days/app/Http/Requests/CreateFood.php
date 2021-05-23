<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateFood extends FormRequest
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
            'biography' => 'required|text',
            'age' => 'required|integer',
            'role' => 'required|string',
            'tags' => 'required|string',
            'email' => 'required|string',
            'password' => 'required|string',
        ];
    }
}
