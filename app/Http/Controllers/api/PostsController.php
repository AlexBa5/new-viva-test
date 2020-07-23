<?php
   
namespace App\Http\Controllers\api;
   
use Validator;
use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\api\BaseController;
use App\Http\Resources\PostResource;
   
class PostsController extends BaseController
{
    public function __construct()
    {
        $this->middleware('auth:api')->only(['store', 'update', 'destroy']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::all();
        return $this->sendResponse( PostResource::collection($posts), 'Posts found' );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->middleware('auth:api');

        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required',
            'content' => 'required'
        ]);
   
        if( $validator->fails() ){
            return $this->sendError( 'Validation Error.', $validator->errors() );       
        }
   
        $post = Post::create($input);
   
        return $this->sendResponse( new PostResource($post), 'Post created.' );
    } 
   
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
  
        if ( is_null($post) ) {
            return $this->sendError('Post was not found.');
        }
   
        return $this->sendResponse( new PostResource($post), 'Posts selected' );
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required',
            'content' => 'required'
        ]);
   
        if( $validator->fails() ){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $post->title = $request->input('title');
        $post->content = $request->input('content');
        $post->save();
   
        return $this->sendResponse(new PostResource($post), 'Post updated.');
    }
   
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $post->delete();
        return $this->sendResponse([], 'Post deleted.');
    }
}