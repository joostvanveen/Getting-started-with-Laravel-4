<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', 'HomeController@showWelcome');
//Route::get('post/listing', array('uses' => 'PostController@listing', 'as' => 'post.listing'));
//Route::get('post/single', array('uses' => 'PostController@single', 'as' => 'post.single'));
//
//Route::group(array('before' => 'auth'), function(){
//    Route::get('post/listing', array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
//    Route::get('post/{id}', array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*'));
//    Route::post('post/{id}', array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where(array('id' => '[1-9][0-9]*'));
//});

Route::group(array('prefix' => 'admin'), function(){
    Route::get('post/listing', array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
    Route::get('post/{id}', array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*'));
    Route::post('post/{id}', array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where(array('id' => '[1-9][0-9]*'));
});


Route::get('login', function(){
    return "login page";
});