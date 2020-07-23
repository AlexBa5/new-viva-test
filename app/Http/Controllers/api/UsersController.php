<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\api\BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\UserResource;
use App\User;
use Validator;

class UsersController extends BaseController
{
	public function __construct () 
	{
		$this->middleware('auth:api');
	}
	 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return $this->sendResponse( UserResource::collection($users), 'Users listed' );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'name' => 'required',
            'password' => 'required',
            'spassword' => 'required|same:password',
            'email' => 'required|email'
        ]);
   
        if( $validator->fails() ){
            return $this->sendError( 'Validation Error.', $validator->errors() );       
        }

        $input['password'] = bcrypt( $input['password'] );
   
        $user = User::create($input);
   
        return $this->sendResponse( new UserResource($user), 'User created.' );
    } 
   
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
  
        if ( is_null($user) ) {
            return $this->sendError('User was not found.');
        }
   
        return $this->sendResponse( new UserResource($user), 'User selected' );
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'name' => 'required',
            'password' => 'required',
            'spassword' => 'required|same:password',
            'email' => 'required|email'
        ]);
   
        if( $validator->fails() ){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $user->name = $request->input('name');
        $user->password = bcrypt( $request->input('password') );
        $user->email = $request->input('email');
        $user->save();
   
        return $this->sendResponse(new UserResource($user), 'User updated.');
    }
   
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return $this->sendResponse([], 'User deleted.');
    }
}
