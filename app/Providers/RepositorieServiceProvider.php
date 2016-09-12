<?php

namespace CodeDelivery\Providers;

use Illuminate\Support\ServiceProvider;

class RepositorieServiceProvider extends ServiceProvider
{


     /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(
            'CodeDelivery\Repositories\CategoryRepository',
            'CodeDelivery\Repositories\CategoryRepositoryEloquent'
        );
    }
}
