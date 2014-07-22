@extends('layouts.default')

@section('content')
    @if(count($users))
        @foreach($users as $user)
            <p>{{{ $user->email or 'default value' }}}</p>
        @endforeach
    @endif
@stop