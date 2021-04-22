<?php
//function test_helper() {
//    return 'OK';
//}


//app.blade.php主布局文件中，根据不同的路由名称定义不同的样式
function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}