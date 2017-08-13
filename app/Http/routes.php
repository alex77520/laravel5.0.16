<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Route::get('/', function(){ return 'Hello Laravel'; });
Route::get('hi', function(){  return 'Hello World'; });


//将构建前台页面，把 Pages 展示
//Route::get('/', 'WelcomeController@index');
//Route::get('home', 'HomeController@index');
Route::get('/', 'HomeController@index');



//个人博客系统并不想让人随便注册,删除以下方法
/*Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);*/
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

//构建 Page 展示页
Route::get('pages/{id}', 'PagesController@show');

// 评论
Route::post('comment/store', 'CommentsController@store');


Route::get('user', 'UserController@index');
//Route::get('user', 'UserController@show');

// 后台
Route::group(['prefix' => 'admin', 'namespace' => 'Admin','middleware' => 'auth'], function()
{
    Route::get('/', 'AdminHomeController@index');
    Route::resource('pages', 'PagesController');
    Route::resource('comments', 'CommentsController');
});

//显示一个重置密码的页面get请求
Route::get('reset', 'UserController@getReset');

//重置密码post请求
Route::post('reset', 'UserController@postReset');
