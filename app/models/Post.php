<?php

class Post extends \Eloquent {
//	protected $fillable = ['title', 'body'];
protected $guarded = ['user_id'];
}