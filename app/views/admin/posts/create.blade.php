@extends('admin._layouts.admin')

@section('content')

<h1>Create Post</h1>
{{ Form::open(array('route' => 'admin.posts.store')) }}
    @include('admin.posts._partials.form')
{{ Form::close() }}
@stop