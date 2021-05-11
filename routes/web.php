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
//商品详情;
Route::get('products/{product}', 'ProductsController@show')->name('products.show');

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
});


