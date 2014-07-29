<?php

class UserController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		// $users = DB::table('users')->where('id', 1)->get();
        // dd(DB::table('users')->max('permission'));
        // dd(DB::table('users')->lists('email', 'id'));
        // dd(DB::table('users')->count());
        // $users = DB::table('users')->where('id', 1)->orWhere('id', 5)->get();
        // dd(DB::getQueryLog());
        // $users = DB::table('users')->where('id', '>', 1)->orderBy('email', 'desc')->take(2)->skip(0)->get();
        $users = DB::table('users')->join('posts', 'users.id', '=', 'posts.user_id')->get();

        $data = array(
            'email' => 'some11@email.com',
            'password' => Hash::make('12345'),
        );
        //DB::table('users')->insert($data);
        DB::table('users')->where('id', 6)->update($data);

        DB::table('users')->where('id', 6)->delete();

        return View::make('user.index', compact('users'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}


	/**
	 * Store a newly created resource in database.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
        // $user = DB::table('users')->where('id', $id)->where('email', 'john@doe.com')->first();
        // $user = DB::table('users')->where(array('email' => 'john@doe.com', 'id'=> $id))->first();
        // $user = DB::table('users')->where('id', $id)->first();
        // $user = DB::table('users')->find($id);
        $user = User::with('categories')->find($id);

        return View::make('user.show', compact('user'));
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
        $user = User::find($id);
        return View::make('user.edit', compact('user'));
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
        $validator = Validator::make(Input::all(), User::$rules);

        if($validator->fails()){
            return Redirect::back()->withInput()->withErrors($validator);
        }

        dd(Input::all());
	}


	/**
	 * Remove the specified resource from database.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
