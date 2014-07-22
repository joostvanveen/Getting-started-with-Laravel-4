<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Users</title>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

@if(count($users))
    @foreach($users as $user)
        <p>{{{ $user->email or 'default value' }}}</p>
    @endforeach
@endif

</body>
</html>