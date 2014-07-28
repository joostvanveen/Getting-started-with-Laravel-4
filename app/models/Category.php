<?php


class Category extends Eloquent
{
    public function users(){
        return $this->belongsToMany('User');
    }
} 