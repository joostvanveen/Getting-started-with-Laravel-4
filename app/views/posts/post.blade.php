@extends('_layouts.default')

@section('content')
<h1>{{{ $post->title }}}</h1>
<p class="created_at">Created on {{{ date('Y-m-d', strtotime($post->created_at))}}} By {{{ $post->user->name }}}</p>
<p>{{{ $post->body }}}</p>
<p>{{ link_to_route('home', '&lsaquo; Back') }}</p>
@stop