<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginRequest extends FormRequest
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
            'user' => 'required:users,username',
            'password' => 'required'
        ];
    }

    public function messages()
    {
       return[
            'user.required' => 'Please Enter UseName',
            'password.required' => 'Please Enter Password'
       ];
    }
}
