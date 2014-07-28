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
Route::get('post/listing', array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
Route::get('post/{id}', array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*'));
Route::get('post/update/{id}', array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where(array('id' => '[1-9][0-9]*'));
Route::get('post/destroy/{id}', array('uses' => 'PostController@destroy', 'as' => 'post.post.destroy'))->where(array('id' => '[1-9][0-9]*'));
Route::get('post/insert', array('uses' => 'PostController@insert', 'as' => 'get.post.insert'));


Route::resource('user', 'UserController');