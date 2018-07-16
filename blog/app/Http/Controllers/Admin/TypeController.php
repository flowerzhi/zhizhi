<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Types;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {		
        $res=Types::get()->toArray();
		
        return view("Admin/Type/index",['res'=>$res]);
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
    	$res=DB::table('types')->where('id',$id)->get()->toArray()[0];
		
    	$type=DB::table('types')->get()->toArray();
        return view("Admin/Type/edit",['type'=>$type,'res'=>$res]);
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
		$res=DB::table('types')->where('id',$id)->update($request);
		if($res){
			return redirect('/admin/type');
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
    	
		$ress=Types::get()->where('id',$id)->toArray();
		if($ress['count']=0){
	        $res=DB::table('types')->delete($id);
			if($res){
				return 1;
			}else{
				return 0;
			}
		}
    }
	
}