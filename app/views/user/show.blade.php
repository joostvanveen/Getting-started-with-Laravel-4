@extends('layouts.default')

@section('content')
   <p>{{{ $user->email or 'default value' }}}</p>

    @foreach($user->posts as $post)
        <li>{{{ $post->title }}}</li>
    @endforeach

    <h2>Categories</h2>
    @foreach($user->categories as $cat)
        <li>{{{ $cat->name }}}</li>
    @endforeach

@stop

@section('sidebar')
    @parent
   <p><a href="#">Some link</a></p>
   <p><a href="#">Some link</a></p>
   <p><a href="#">Some link</a></p>
@stop