<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$web=DB::table("config")->where("id",1)->get()->toArray()[0];
    	$intro=DB::table("intro")->where("id",1)->get()->toArray()[0];
		$job=DB::table("job")->get()->toArray();
		$type=DB::table('types')->get()->toArray();
		$work=DB::table("works")->orderBy("time",'desc')->get()->toArray();
        $post=DB::table('post')
        			->join('types','post.tid','=','types.id')
        			->select('post.id','post.title','post.content','post.ctime','post.pic','post.tid','types.dataName')
        			->orderBy('ctime','desc')
        			->get()->toArray();
		foreach($post as $k=>$v){
			$post[$k]->content=htmlspecialchars($post[$k]->content);
		}
		$reply=DB::table('reply')
					->get()->toArray();
        return view("Home/Index/index",["web"=>$web,"intro"=>$intro,"job"=>$job,"work"=>$work,"post"=>$post,"reply"=>$reply,"type"=>$type]);
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

        $reply=$request->except(["_token"]);
        date_default_timezone_set("PRC");
		$reply["ctime"]=date("Y-m-d H:i:s",time());

        $res=DB::table("reply")->insert($reply);
        if($res){
            return redirect("/home/index#portfolio");
        }else{
            return redirect("/home/index#portfolio");
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

    public function insert(Request $request)
    {
    	$message=$request->except(["_token"]);
        
		$message["ctime"]=date("Y-m-d H:i:s");
//		dd($message);
        $res=DB::table("message")->insert($message);
        if($res){
            return redirect("/home/index#contact");
        }else{
            return redirect("/home/index#contact");
        }
    }
}
