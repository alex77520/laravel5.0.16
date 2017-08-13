<?php namespace App\Http\Controllers;

use App\Page;

//负责单个 page 的展示
class PagesController extends Controller {

  public function show($id)
  {
    return view('pages.show')->withPage(Page::find($id));
  }

}