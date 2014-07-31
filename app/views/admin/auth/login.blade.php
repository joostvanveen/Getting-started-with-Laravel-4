@extends('admin._layouts.admin')

@section('content')

<h2>Please login</h2>
{{ Form::open(array('route' => 'admin.login.post')) }}
<ul>
    <li>
        {{ Form::label('email', 'Email') }}
        {{ Form::email('email') }}
        {{ $errors->first('email', '<p class="error">:message</p>') }}
    </li>
    <li>
        {{ Form::label('password', 'Password') }}
        {{ Form::password('password') }}
        {{ $errors->first('password', '<p class="error">:message</p>') }}
    </li>
    <li>
        {{ Form::submit('Log in') }}
    </li>
</ul>
{{ Form::close() }}

@stop