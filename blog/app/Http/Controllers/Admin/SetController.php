<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\Types;
use App\Models\Post;


class SetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $res=DB::table('config')->get()->toArray();
        return view("Admin/Set/set",['res'=>$res]);
        
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
        $request=$request->except('_token');
		
		$file = $request['logo'];
		
		if(!$file->isValid()){
	        return '文件上传出错！';
	    }
		$ext=$file->extension();
		$saveName='logo'.rand(100,1000).'.'.$ext;
		$path=$file->storeAs('images',$saveName);
		
		$request['logo']=$path;
		
		$res=DB::table('config')->insert($request);
		
		if($res){
			return redirect('/admin/set');
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    	$ok=DB::table('config')->where('id',$id)->get()->toArray()[0]->status;
		if(!$ok){
	        $res=DB::table('config')->delete($id);
			if($res){
				return 1;
			}else{
				return 0;
			}
		}
	}
}
