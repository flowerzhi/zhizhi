<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\Types;
use App\Models\Post;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$type=Types::get()->toArray();
		$post=Post::get()->toArray();

		foreach($post as $k=>$v){
			$post[$k]['tid']=Types::where('id',$post[$k]['tid'])->get()->toArray()[0]['name'];
		}
		
        return view('Admin/Type/post',['type'=>$type,'post'=>$post]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    	if(!$request['dataName']){
    		return redirect('/admin/list');
    	}
        $request=$request->except('_token');	
		
		$post['pic']='pic.jpg';
		$post['count']=1;
		
		$tid=DB::table('types')->where('dataName',$request['dataName'])->get()[0]->id;
		$post['ctime']=date('Y-m-d H:i:s');
		$post['content']=$request['content'];
		$post['title']=$request['title'];
		$post['tid']=$tid;
		$post['created_at']=date('Y-m-d H:i:s');
		$post['updated_at']=date('Y-m-d H:i:s');
		$type=Types::get()->toArray();
		foreach($type as $k=>$v){
			if($type[$k]['id']==$tid){
				$type[$k]['count']=$type[$k]['count']+1;
				Types::where('id',$tid)->update($type[$k]);
			}
		}
		$res=DB::table('post')->insert($post);
		if($res){
			return back();
		}else{
			return back();
		}
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $type=Types::get()->toArray();
		$post=Post::where('id',$id)->get()->toArray()[0];
		
        return view('Admin/Type/postedit',['type'=>$type,'post'=>$post]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
    	$time=Post::where('id',$id)->get()->toArray()[0]['ctime'];
    	$count=Post::where('id',$id)->get()->toArray()[0]['count'];
        $request=$request->except(['_token','_method']);
//		var_dump($request);
//		die;
		$request['tid']=Types::where('dataName',$request['dataName'])->get()->toArray()[0]['id'];
		$request['ctime']=$time;
		$request['count']=$count;
		unset($request['dataName']);
		if(empty($request['tid'])){
			$request['tid']=$tid;
		}
		$res=Post::where('id',$id)->update($request);
		if($res){
			return redirect('/admin/post');
		}else{
			return back();
		}
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $res=DB::table('post')->delete($id);
		if($res){
	    	$type=Types::get()->toArray();
			foreach($type as $k=>$v){
				if($type[$k]['id']==$id){
					$type[$k]['count']=$type[$k]['count']-1;
					Types::where('id',$id)->update($type[$k]);
				}
			}
			return 1;
		}else{
			return 0;
		}
    }
}
