<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreInvitationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'full_name'=> 'required',
            'whatsapp_num'=> 'required',
            //'is_whatsapp'=> 'required',
            'email'=> 'required',
            'sec_email'=> 'required',
            'authority'=> 'required',
            'position'=> 'required',
            //'is_attendant'=> 'required',
            'req_status'=> 'required',
            'lang'=>'required',
            //'date'=> 'required',
            //'title_id'=> 'required',
            //'category_id'=> 'required',
            //'chair_id'=> 'required',
        ];
    }
}
