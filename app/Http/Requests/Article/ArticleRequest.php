<?php

namespace App\Http\Requests\Article;

use Illuminate\Foundation\Http\FormRequest;

class ArticleRequest extends FormRequest
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
            'name'=>'required',
            'description'=>'required',
            'content'=>'required',
            'file_sc'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'The title cannot be left blank',
            'description.required' => 'The description cannot be left blank',
            'content.required' => 'The content cannot be left blank',
            'file_sc.required' => 'Please select photo',
        ];
    }
}
