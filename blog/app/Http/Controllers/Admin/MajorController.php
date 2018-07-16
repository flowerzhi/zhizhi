<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\Types;
use App\Models\Post;

class MajorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
       	$res=DB::table('users')->get()->toArray();
        return view("Admin/Set/major",['res'=>$res]);
        
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
        //
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
    	$res=DB::table('users')->where('id',$id)->get()->toArray()[0];
       	return view('Admin/Set/edit',['res'=>$res]);
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
        $request=$request->except(['_token','_method']);

		$file = $request['pic'];
		
		if(!$file->isValid()){
	        return '文件上传出错！';
	    }
		$ext=$file->extension();
		$saveName='touxiang'.rand(100,1000).'.'.$ext;
		$path=$file->storeAs('images',$saveName);
		
		$major=DB::table('users')->where('id',$id)->get()->toArray()[0];
		$data['name']=$request['name'];
		$data['photo']=$path;
		$data['email']=$request['email'];
		$data['id']=$major->id;
		$data['created_at']=$major->created_at;
		$data['updated_at']=$major->updated_at;
		$data['password']=$major->password;
		$data['remember_token']=$major->remember_token;
		$res=DB::table('users')->where('id',$id)->update($data);
		
		if($res){
			return redirect('/admin/major');
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
        //
    }
}
