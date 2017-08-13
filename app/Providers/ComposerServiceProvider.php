<?php namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap the application services.
	 * 启动任意应用服务
	 *
	 * @return void
	 */
	public function boot(ResponseFactory $response)
	{
		//
		$response->macro('caps', function ($value) {
        //
    	});
	}

	/**
	 * Register the application services.
	 *
	 * @return void
	 */
	public function register()
	{
		//
	}

}
