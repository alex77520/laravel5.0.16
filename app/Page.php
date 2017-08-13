<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model {

	//建立“一对多关系”
	public function hasManyComments()
	{
		return $this->hasMany('App\Comment', 'page_id', 'id');
	}

}
