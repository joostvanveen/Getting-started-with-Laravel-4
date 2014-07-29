<?php

Route::resource('posts', 'PostsController', array('except' => array('show')));