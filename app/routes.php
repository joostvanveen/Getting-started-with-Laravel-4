<?php

Route::group(array('prefix' => 'admin'), function(){
    Route::get('login', array('as' => 'admin.login', 'uses' => 'AdminAuthController@getLogin'));
    Route::post('login', array('as' => 'admin.login.post', 'uses' => 'AdminAuthController@postLogin'));
    Route::get('logout', array('as' => 'admin.logout', 'uses' => 'AdminAuthController@getLogout'));
});

Route::group(array('prefix' => 'admin', 'before' => 'auth'), function(){
    Route::resource('posts', 'AdminPostsController', array('except' => array('show')));
});

Route::get('/', array('as' => 'home', 'uses' => 'PostsController@getIndex'));
Route::get('post/{id}', array('as' => 'post', 'uses' => 'PostsController@getPost'))->where('id', '[1-9][0-9]*');