<?php

namespace App\Providers;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        DB::listen(function($query){
            //$query->sql
            //$query->bindings
            //$query->time
            $str=implode('-', $query->bindings);
            file_put_contents('.sqls', "[".date('Y-m-d H:i:s')."]".$query->sql.'被绑定的值为：'.$str."\r\n",FILE_APPEND);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
