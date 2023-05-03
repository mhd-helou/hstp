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
            'whatsapp_num'=> 'sometimes|nullable',
            'is_whatsapp'=> 'sometimes|nullable',
            'email'=> 'required',
            'sec_email'=> 'sometimes|nullable',
            'authority'=> 'sometimes|nullable',
            'position'=> 'sometimes|nullable',
            'is_attendant'=> 'sometimes|nullable',
            'req_status'=> 'sometimes|nullable',
            'lang'=>'sometimes|nullable',
            'is_confirmed'=>'sometimes|nullable',
            'is_internal'=>'sometimes|nullable',
            'date'=> 'sometimes|nullable',
            'honor_title'=> 'sometimes|nullable',
            'title_id'=> 'sometimes|nullable',
            'category_id'=> 'sometimes|nullable',
        ];
    }
}
