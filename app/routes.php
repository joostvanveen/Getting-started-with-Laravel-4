<?php

Route::group(array('prefix' => 'admin'), function(){
    Route::resource('posts', 'AdminPostsController', array('except' => array('show')));
});
