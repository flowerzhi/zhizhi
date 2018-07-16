<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class TypeListController extends Controller
{
	
	private static function getType(){
        $res=DB::table('types')->select(DB::raw("*,concat(path,'-',id) as npath"))->get()->toArray();
		
        foreach ($res as $k => $v){

            $num=substr_count($v->path, '-');
            $res[$k]->name=str_repeat("|----", $num).$v->name;
        }
        return $res;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $type=self::getType();
		
        return view("Admin/Type/list",['type'=>$type]);
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
        if($request['pid']==0){
        	$ress=DB::table('types')->insert($request);
			if($ress){
				return redirect('/admin/type');
			}else{
				return back();
			}
        }else{
        	$path=DB::table('types')->where('id',$request['pid'])->select(DB::raw('path'))->get()->toArray()[0];
			$request['path']=$path->path.'-'.$request['pid'];
			$ress=DB::table('types')->insert($request);
			if($ress){
				return redirect('/admin/type');
			}else{
				return back();
			}
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
        //
    }
}
