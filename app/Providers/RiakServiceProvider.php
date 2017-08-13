<?php namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class RiakServiceProvider extends ServiceProvider {

	/**
	 * Bootstrap the application services.
	 *
	 * @return void
	 */
	public function boot()
	{
		//
	}

	/**
	 * Register the application services.
	 *
	 * @return void
	 */
	public function register()
	{
		//在服务容器中使用此方法定义了一份 Riak\Contracts\Connection 的实现
		$this->app->singleton(Connection::class, function ($app) {
			return new Connection(config('riak'));
		});
	}

}
