<?php
   
namespace App\Http\Controllers\api;
   
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Validator;
   
class UsersController extends BaseController
{
    public function __construct () 
    {
        $this->middleware('auth:api');
    }
   
    public function user()
    {
        dd(1); 
    }
}