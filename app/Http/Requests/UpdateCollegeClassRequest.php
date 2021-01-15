<?php

namespace App\Http\Requests;

use App\CollegeClass;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class UpdateCollegeClassRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('college_class_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'name' => [
                'required'],
        ];
    }
}
