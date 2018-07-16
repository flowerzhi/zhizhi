<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	$web=DB::table("config")->where("id",1)->get()->toArray()[0];
	$intro=DB::table("intro")->where("id",1)->get()->toArray()[0];
	$job=DB::table("job")->get()->toArray();
	$work=DB::table("works")->get()->toArray();
	$type=DB::table('types')->get()->toArray();
    $post=DB::table('post')
        			->join('types','post.tid','=','types.id')
        			->select('post.id','post.title','post.content','post.ctime','post.pic','post.tid','types.dataName')
        			->get();
   $reply=DB::table('reply')
					->get()->toArray();
    return view("Home/Index/index",["web"=>$web,"intro"=>$intro,"job"=>$job,"work"=>$work,"post"=>$post,"reply"=>$reply,"type"=>$type]);
});


Route::prefix("/home")->namespace("Home")->group(function(){
	Route::resource("index","IndexController");
	Route::post("index/insert","IndexController@insert");
});

Route::prefix("/admin")->namespace("Admin")->middleware('auth')->group(function(){
	
	Route::resource("index","IndexController");
	Route::resource("info","WebInfoController");	
	Route::resource("infoedit","InfoEditController");	
	Route::resource("type","TypeController");	
	Route::resource("list","TypeListController");	
	Route::resource("post","PostController");	
	Route::resource("article","ArticleController");	
	Route::resource("message","MessageController");	
	Route::resource("set","SetController");	
	Route::resource("major","MajorController");	
	Route::resource("postedit","PostEditController");	
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
