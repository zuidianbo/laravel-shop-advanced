<?php
//
//namespace App\Admin\Controllers;
//
//use App\Models\Order;
//use Encore\Admin\Controllers\AdminController;
//use Encore\Admin\Form;
//use Encore\Admin\Grid;
//use Encore\Admin\Show;
//
//class OrdersController extends AdminController
//{
//    /**
//     * Title for current resource.
//     *
//     * @var string
//     */
//    protected $title = 'App\Models\Order';
//
//    /**
//     * Make a grid builder.
//     *
//     * @return Grid
//     */
//    protected function grid()
//    {
//        $grid = new Grid(new Order);
//
//        $grid->column('id', __('Id'));
//        $grid->column('no', __('No'));
//        $grid->column('user_id', __('User id'));
//        $grid->column('address', __('Address'));
//        $grid->column('total_amount', __('Total amount'));
//        $grid->column('remark', __('Remark'));
//        $grid->column('paid_at', __('Paid at'));
//        $grid->column('payment_method', __('Payment method'));
//        $grid->column('payment_no', __('Payment no'));
//        $grid->column('refund_status', __('Refund status'));
//        $grid->column('refund_no', __('Refund no'));
//        $grid->column('closed', __('Closed'));
//        $grid->column('reviewed', __('Reviewed'));
//        $grid->column('ship_status', __('Ship status'));
//        $grid->column('ship_data', __('Ship data'));
//        $grid->column('extra', __('Extra'));
//        $grid->column('created_at', __('Created at'));
//        $grid->column('updated_at', __('Updated at'));
//
//        return $grid;
//    }
//
//    /**
//     * Make a show builder.
//     *
//     * @param mixed $id
//     * @return Show
//     */
//    protected function detail($id)
//    {
//        $show = new Show(Order::findOrFail($id));
//
//        $show->field('id', __('Id'));
//        $show->field('no', __('No'));
//        $show->field('user_id', __('User id'));
//        $show->field('address', __('Address'));
//        $show->field('total_amount', __('Total amount'));
//        $show->field('remark', __('Remark'));
//        $show->field('paid_at', __('Paid at'));
//        $show->field('payment_method', __('Payment method'));
//        $show->field('payment_no', __('Payment no'));
//        $show->field('refund_status', __('Refund status'));
//        $show->field('refund_no', __('Refund no'));
//        $show->field('closed', __('Closed'));
//        $show->field('reviewed', __('Reviewed'));
//        $show->field('ship_status', __('Ship status'));
//        $show->field('ship_data', __('Ship data'));
//        $show->field('extra', __('Extra'));
//        $show->field('created_at', __('Created at'));
//        $show->field('updated_at', __('Updated at'));
//
//        return $show;
//    }
//
//    /**
//     * Make a form builder.
//     *
//     * @return Form
//     */
//    protected function form()
//    {
//        $form = new Form(new Order);
//
//        $form->text('no', __('No'));
//        $form->number('user_id', __('User id'));
//        $form->textarea('address', __('Address'));
//        $form->decimal('total_amount', __('Total amount'));
//        $form->textarea('remark', __('Remark'));
//        $form->datetime('paid_at', __('Paid at'))->default(date('Y-m-d H:i:s'));
//        $form->text('payment_method', __('Payment method'));
//        $form->text('payment_no', __('Payment no'));
//        $form->text('refund_status', __('Refund status'))->default('pending');
//        $form->text('refund_no', __('Refund no'));
//        $form->switch('closed', __('Closed'));
//        $form->switch('reviewed', __('Reviewed'));
//        $form->text('ship_status', __('Ship status'))->default('pending');
//        $form->textarea('ship_data', __('Ship data'));
//        $form->textarea('extra', __('Extra'));
//
//        return $form;
//    }
//}




namespace App\Admin\Controllers;

use App\Models\Order;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;

use Encore\Admin\Layout\Content;

use Illuminate\Http\Request;
use App\Exceptions\InvalidRequestException;

use Illuminate\Foundation\Validation\ValidatesRequests;


use App\Http\Requests\Admin\HandleRefundRequest;


use App\Exceptions\InternalException;

class OrdersController extends AdminController
{

    use ValidatesRequests;

    protected $title = '??????';

    protected function grid()
    {
        $grid = new Grid(new Order);

        // ?????????????????????????????????????????????????????????????????????
        $grid->model()->whereNotNull('paid_at')->orderBy('paid_at', 'desc');

        $grid->no('???????????????');
        // ??????????????????????????????????????? column ??????
        $grid->column('user.name', '??????');
        $grid->total_amount('?????????')->sortable();
        $grid->paid_at('????????????')->sortable();
        $grid->payment_method('????????????');
        $grid->ship_status('??????')->display(function($value) {
            return Order::$shipStatusMap[$value];
        });
        $grid->refund_status('????????????')->display(function($value) {
            return Order::$refundStatusMap[$value];
        });
        // ????????????????????????????????????????????????
        $grid->disableCreateButton();
        $grid->actions(function ($actions) {
            // ???????????????????????????
            $actions->disableDelete();
            $actions->disableEdit();
        });
        $grid->tools(function ($tools) {
            // ????????????????????????
            $tools->batch(function ($batch) {
                $batch->disableDelete();
            });
        });

        return $grid;
    }


//    ??????????????????
    public function show($id, Content $content)
    {
        return $content
            ->header('????????????')
            // body ?????????????????? Laravel ?????????????????????
            ->body(view('admin.orders.show', ['order' => Order::find($id)]));
    }


//    ??????
    public function ship(Order $order, Request $request)
    {
        // ?????????????????????????????????
        if (!$order->paid_at) {
            throw new InvalidRequestException('??????????????????');
        }
        // ????????????????????????????????????????????????
        if ($order->ship_status !== Order::SHIP_STATUS_PENDING) {
            throw new InvalidRequestException('??????????????????');
        }
        // Laravel 5.5 ?????? validate ?????????????????????????????????
        $data = $this->validate($request, [
            'express_company' => ['required'],
            'express_no'      => ['required'],
        ], [], [
            'express_company' => '????????????',
            'express_no'      => '????????????',
        ]);
        // ????????????????????????????????????????????????????????????
        $order->update([
            'ship_status' => Order::SHIP_STATUS_DELIVERED,
            // ????????? Order ????????? $casts ?????????????????? ship_data ???????????????
            // ??????????????????????????????????????????
            'ship_data'   => $data,
        ]);

        // ???????????????
        return redirect()->back();
    }

//   ??????????????????
    public function handleRefund(Order $order, HandleRefundRequest $request)
    {
        // ??????????????????????????????
        if ($order->refund_status !== Order::REFUND_STATUS_APPLIED) {
            throw new InvalidRequestException('?????????????????????');
        }
        // ??????????????????
        if ($request->input('agree')) {
            // ?????????????????????

            // ????????????????????????
            $extra = $order->extra ?: [];
            unset($extra['refund_disagree_reason']);
            $order->update([
                'extra' => $extra,
            ]);
            // ??????????????????
            $this->_refundOrder($order);


        } else {
            // ???????????????????????????????????? extra ?????????
            $extra = $order->extra ?: [];
            $extra['refund_disagree_reason'] = $request->input('reason');
            // ???????????????????????????????????????
            $order->update([
                'refund_status' => Order::REFUND_STATUS_PENDING,
                'extra'         => $extra,
            ]);
        }

        return $order;
    }


// ????????????
    protected function _refundOrder(Order $order)
    {
        // ??????????????????????????????
        switch ($order->payment_method) {
            case 'wechat':
                // ??????????????????
                // todo
                break;
            case 'alipay':
                // ?????????????????????????????????????????????????????????
                $refundNo = Order::getAvailableRefundNo();
                // ?????????????????????????????? refund ??????
                $ret = app('alipay')->refund([
                    'out_trade_no' => $order->no, // ????????????????????????
                    'refund_amount' => $order->total_amount, // ????????????????????????
                    'out_request_no' => $refundNo, // ???????????????
                ]);
                // ???????????????????????????????????????????????? sub_code ????????????????????????
                if ($ret->sub_code) {
                    // ?????????????????????????????? extra ??????
                    $extra = $order->extra;
                    $extra['refund_failed_code'] = $ret->sub_code;
                    // ?????????????????????????????????????????????
                    $order->update([
                        'refund_no' => $refundNo,
                        'refund_status' => Order::REFUND_STATUS_FAILED,
                        'extra' => $extra,
                    ]);
                } else {
                    // ?????????????????????????????????????????????????????????????????????
                    $order->update([
                        'refund_no' => $refundNo,
                        'refund_status' => Order::REFUND_STATUS_SUCCESS,
                    ]);
                }
                break;
            default:
                // ????????????????????????????????????????????????????????????
                throw new InternalException('???????????????????????????' . $order->payment_method);
                break;
        }

    }

}
