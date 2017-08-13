<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model {

	//前台提交功能
	protected $fillable = ['nickname', 'email', 'website', 'content', 'page_id'];
	

}
