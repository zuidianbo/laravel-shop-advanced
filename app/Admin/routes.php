<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->get('users', 'UsersController@index');
    $router->get('products', 'ProductsController@index');
//    新增商品
    $router->get('products/create', 'ProductsController@create');
    $router->post('products', 'ProductsController@store');
//    编辑商品
    $router->get('products/{id}/edit', 'ProductsController@edit');
    $router->put('products/{id}', 'ProductsController@update');

//     订单
    $router->get('orders', 'OrdersController@index')->name('admin.orders.index');

//    订单详情

    $router->get('orders/{order}', 'OrdersController@show')->name('admin.orders.show');


    //发货

    $router->post('orders/{order}/ship', 'OrdersController@ship')->name('admin.orders.ship');


//拒绝退款申请
    $router->post('orders/{order}/refund', 'OrdersController@handleRefund')->name('admin.orders.handle_refund');



//优惠券管理
    $router->get('coupon_codes', 'CouponCodesController@index');

//新增优惠券
    $router->post('coupon_codes', 'CouponCodesController@store');
    $router->get('coupon_codes/create', 'CouponCodesController@create');


//    修改优惠券
    $router->get('coupon_codes/{id}/edit', 'CouponCodesController@edit');
    $router->put('coupon_codes/{id}', 'CouponCodesController@update');


//    删除优惠券
    $router->delete('coupon_codes/{id}', 'CouponCodesController@destroy');

//分类路由
    $router->get('categories', 'CategoriesController@index');
    $router->get('categories/create', 'CategoriesController@create');
    $router->get('categories/{id}/edit', 'CategoriesController@edit');
    $router->post('categories', 'CategoriesController@store');
    $router->put('categories/{id}', 'CategoriesController@update');
    $router->delete('categories/{id}', 'CategoriesController@destroy');
    $router->get('api/categories', 'CategoriesController@apiIndex');



//    众筹后台路由
    $router->get('crowdfunding_products', 'CrowdfundingProductsController@index');
    $router->get('crowdfunding_products/create', 'CrowdfundingProductsController@create');
    $router->post('crowdfunding_products', 'CrowdfundingProductsController@store');
    $router->get('crowdfunding_products/{id}/edit', 'CrowdfundingProductsController@edit');
    $router->put('crowdfunding_products/{id}', 'CrowdfundingProductsController@update');

});



//$router->resource('users', UsersController::class);

