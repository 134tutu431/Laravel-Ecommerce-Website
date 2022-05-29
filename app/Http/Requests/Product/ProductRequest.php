<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
            'name' =>'required',
            'file_sc' =>'required',
            'description' => 'required',
            'content' => 'required',
            'quantity' => 'required'
        ];
    }
    public function messages()
    {
        return [
            'file_sc.required' => 'A file image is required',
        ];
    }

}
