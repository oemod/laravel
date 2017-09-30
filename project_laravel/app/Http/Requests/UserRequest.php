<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'txtUser' => 'required|unique:users,username',
            'txtPass' => 'required',
            'txtRePass' => 'required|same:txtPass',
            'txtEmail' => 'required|unique:users,email'
        ];
    }

    public function messages()
    {
       return[
        'txtUser.required' => 'Please Enter UserName',
        'txtUser.unique' => 'User is Exist',
        'txtPass.required' => 'Please Enter PassWord',
        'txtRePass.required' => 'Please Enter RE-PassWord',
        'txtRePass.same' => 'Two PassWord Don\'t Match',
        'txtEmail.required' => 'Please Enter Email',
        'txtEmail.unique' => 'Email Error Syntax'
       ];
    }
}
