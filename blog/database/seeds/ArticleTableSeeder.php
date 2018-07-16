<?php

use Illuminate\Database\Seeder;

class ArticleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0;$i<100;$i++){
	         DB::table('article')->insert([
	            'title' => str_random(10),
	            'intro' => str_random(30),
	            'contents'=>str_random(255),
	            'like'=>rand(999,9999),
	            'photo'=>rand(0,100).'.jpg',
	            'click_num'=>rand(1,50),
	            'created_at'=>date('Y-m-d H:i:s'),
	        ]);
	    }
    }
}
