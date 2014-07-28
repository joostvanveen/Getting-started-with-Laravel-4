<?php

class PostController extends BaseController {

    public function listing()
    {
        $posts = Post::where('title', 'LIKE', '%post%')->take(1)->skip(1)->get();
        return View::make('post.listing', compact('posts'));
    }

    public function single($id)
    {
        $post = Post::find($id);
        return View::make('post.single')->with('post', $post);
    }

    public function insert(){
        //$post = new Post;
        //$post->title = 'A post from the insert method';
        //$post->body = 'Some random gibberish';
        //$post->save();

        $data = array(
            'title' => 'A post from the insert method, using the POST array',
            'body' => 'Some random gibberish',
            'user_id' => 1,
        );
        Post::create($data);
        dd('Post inserted');
    }

    public function update($id)
    {
        $post = Post::find($id);
        $post->user_id = 1;
        $post->save();
        dd('Post updated');
    }

    public function destroy($id){
        $post = Post::find($id);
        $post->delete();
        dd('Post deleted');
    }
} 