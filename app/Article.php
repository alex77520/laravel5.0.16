<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model {

	//找到 id 为 2 的文章打印其标题
	//$article = Article::find(2);
	//echo $article->title;  
	//查找标题为“我是标题”的文章，并打印 id
	//$article = Article::where('title', '我是标题')->first();
	//echo $article->id;

}
