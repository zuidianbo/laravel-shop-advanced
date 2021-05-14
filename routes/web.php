<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});


//Route::get('/', 'PagesController@root')->name('root')->middleware('verified');
//暂时把首页的邮箱认证去掉
//Route::get('/', 'PagesController@root')->name('root');

//用户一进来就能看到商品列表，因此让首页直接跳转到商品页面
//我们希望游客也能够访问商品列表，所以这条路由不需要放到带有 auth 中间件的路由组中。
Route::redirect('/', '/products')->name('root');
Route::get('products', 'ProductsController@index')->name('products.index');

//需要让 Laravel 启用与邮箱验证相关的路由（验证邮箱页面、重发验证邮件页面等），操作也很简单，只需要
//加上 ['verify' => true]
Auth::routes(['verify' => true]);



//Auth::routes();
//等同于：
//// 用户身份验证相关的路由
//Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
//Route::post('login', 'Auth\LoginController@login');
//Route::post('logout', 'Auth\LoginController@logout')->name('logout');
//
//// 用户注册相关路由
//Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
//Route::post('register', 'Auth\RegisterController@register');
//
//// 密码重置相关路由
//Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
//Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
//Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
//Route::post('password/reset', 'Auth\ResetPasswordController@reset')->name('password.update');
//
//// Email 认证相关路由
//Route::get('email/verify', 'Auth\VerificationController@show')->name('verification.notice');
//Route::get('email/verify/{id}/{hash}', 'Auth\VerificationController@verify')->name('verification.verify');
//Route::post('email/resend', 'Auth\VerificationController@resend')->name('verification.resend');
//(首页使用自定义的路由 删除了这里生成的首页路由)




//收获地址列表
// auth 中间件代表需要登录，verified中间件代表需要经过邮箱验证
Route::group(['middleware' => ['auth', 'verified']], function() {
    Route::get('user_addresses', 'UserAddressesController@index')->name('user_addresses.index');
//新增收获地址
    Route::get('user_addresses/create', 'UserAddressesController@create')->name('user_addresses.create');
//    保存收货地址
    Route::post('user_addresses', 'UserAddressesController@store')->name('user_addresses.store');

//    编辑收货地址

    Route::get('user_addresses/{user_address}', 'UserAddressesController@edit')->name('user_addresses.edit');

//    保存编辑
    Route::put('user_addresses/{user_address}', 'UserAddressesController@update')->name('user_addresses.update');

//    删除地址
    Route::delete('user_addresses/{user_address}', 'UserAddressesController@destroy')->name('user_addresses.destroy');

//收藏和取消收藏商品
    Route::post('products/{product}/favorite', 'ProductsController@favor')->name('products.favor');
    Route::delete('products/{product}/favorite', 'ProductsController@disfavor')->name('products.disfavor');

//    收藏列表
    Route::get('products/favorites', 'ProductsController@favorites')->name('products.favorites');

//    添加购物车
    Route::post('cart', 'CartController@add')->name('cart.add');

//    购物车列表
    Route::get('cart', 'CartController@index')->name('cart.index');

//    移除购物车商品
    Route::delete('cart/{sku}', 'CartController@remove')->name('cart.remove');

//添加订单
    Route::post('orders', 'OrdersController@store')->name('orders.store');

//    订单列表
    Route::get('orders', 'OrdersController@index')->name('orders.index');

//    订单详情

    Route::get('orders/{order}', 'OrdersController@show')->name('orders.show');

//    支付宝支付
    Route::get('payment/{order}/alipay', 'PaymentController@payByAlipay')->name('payment.alipay');


//    前端回调
    Route::get('payment/alipay/return', 'PaymentController@alipayReturn')->name('payment.alipay.return');

//    确认收货
    Route::post('orders/{order}/received', 'OrdersController@received')->name('orders.received');


//    订单评价
    Route::get('orders/{order}/review', 'OrdersController@review')->name('orders.review.show');
    Route::post('orders/{order}/review', 'OrdersController@sendReview')->name('orders.review.store');


//    输入优惠券码 检查优惠券
    Route::get('coupon_codes/{code}', 'CouponCodesController@show')->name('coupon_codes.show');




});

//商品详情;
Route::get('products/{product}', 'ProductsController@show')->name('products.show');

//服务器回调
Route::post('payment/alipay/notify', 'PaymentController@alipayNotify')->name('payment.alipay.notify');

//申请退款
Route::post('orders/{order}/apply_refund', 'OrdersController@applyRefund')->name('orders.apply_refund');

//支付宝沙箱测试
//Route::get('alipay', function() {
//    return app('alipay')->web([
//        'out_trade_no' => time(),
//        'total_amount' => '1',
//        'subject' => 'test subject - 测试',
//    ]);
//});


//1111