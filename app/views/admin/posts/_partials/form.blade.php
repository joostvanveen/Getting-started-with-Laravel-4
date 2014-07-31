<ul>
    <li>
        {{ Form::label('user_id', 'Author') }}
        {{ Form::select('user_id', User::lists('name', 'id')) }}
        {{ $errors->first('user_id', '<p class="error">:message</p>') }}
    </li>
    <li>
        {{ Form::label('title', 'Title') }}
        {{ Form::text('title') }}
        {{ $errors->first('title', '<p class="error">:message</p>') }}
    </li>
    <li>
        {{ Form::label('body', 'Body') }}
        {{ Form::textarea('body') }}
        {{ $errors->first('body', '<p class="error">:message</p>') }}
    </li>
    <li>
        {{ Form::submit('Save') }}
    </li>
</ul>