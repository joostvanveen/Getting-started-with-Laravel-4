<?php

class Post extends \Eloquent {

    protected $fillable = ['title', 'body'];

    public function user(){
        return $this->belongsTo('User');
    }
}