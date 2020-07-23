<?php
   
namespace App\Http\Controllers\api;
   
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Validator;
   
class AuthController extends BaseController
{
    public function register(Request $request)
    {
        $validator = Validator::make( $request->all(), 
            [
                'name' => 'required',
                'email' => 'required|email',
                'password' => 'required',
                'c_password' => 'required|same:password',
            ]
        );
   
        if( $validator->fails() ){
            return $this->sendError( $validator->errors() );       
        }
        
        $data = [];
        $data['name'] = $request->input('name');
        $data['email'] = $request->input('email');
        $data['password'] = bcrypt( $request->input('password') );

        $user = User::create( $data );
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] = $user->name;

        return $this->sendResponse($success, 'Register successfully.');
    }
   
    public function login(Request $request)
    {
        $accessToken = 'cKHvZN9jlwQuFp4a3109VZdbT3eqAxiktq7JsPFD';

        if( Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $success['token'] = $user->createToken('viva')->accessToken; 
            $success['name'] = $user->name;
   
            return $this->sendResponse($success, 'User login successfully.');
        } 
        else{ 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }
}