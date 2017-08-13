<?php
use App\ShaHasher;
use Illuminate\Hashing\HashServiceProvider;

    class ShaHashServiceProvider extends HashServiceProvider {

        public function boot()
        {
            parent::boot();

            $this->app->bindShared('hash', function()
            {
                return new ShaHasher();
            });
        }

    }