@extends('layouts.default')

@section('content')

    <!-- Form model binding populates the form with the data from a Model -->
    <!-- Documentation on form: http://laravel.com/docs/html -->
    {{ Form::model($user, array('route' => array('user.update', $user->id), 'method' => 'put')) }}

        <li>
            <!-- Laravel Form can also create email text inputs -->
            {{ Form::label('email', 'Your email') }}
            {{ Form::email('email') }}
        </li>
        <li>
            <!-- Laravel does not populate password fields -->
            {{ Form::label('password', 'Your password') }}
            {{ Form::password('password') }}
        </li>
        <li>
            <!-- This cannot be set by the From class -->
            {{ Form::label('active', 'Active?') }}
            {{ Form::checkbox('active') }}
        </li>
        <li>
            <!-- Set the options for a select box with an array -->
            {{ Form::label('permission', 'Your permission') }}
            {{ Form::select('permission', array('1' => 'Webmaster', '2' => 'Editor', '3' => 'Member')) }}
        </li>
        <li>
            {{ Form::submit('Save') }}
        </li>

    {{ Form::close() }}

@stop