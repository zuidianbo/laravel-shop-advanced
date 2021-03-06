<?php
//
//namespace App\Http\Requests\Admin;
//
//use Illuminate\Foundation\Http\FormRequest;
//
//class HandleRefundRequest extends FormRequest
//{
//    /**
//     * Determine if the user is authorized to make this request.
//     *
//     * @return bool
//     */
//    public function authorize()
//    {
//        return false;
//    }
//
//    /**
//     * Get the validation rules that apply to the request.
//     *
//     * @return array
//     */
//    public function rules()
//    {
//        return [
//            //
//        ];
//    }
//}



namespace App\Http\Requests\Admin;

use App\Http\Requests\Request;

class HandleRefundRequest extends Request
{
    public function rules()
    {
        return [
            'agree'  => ['required', 'boolean'],
            'reason' => ['required_if:agree,false'], // 拒绝退款时需要输入拒绝理由
        ];
    }
}
