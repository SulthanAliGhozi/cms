<?php

namespace App\Providers;

use Filament\Facades\Filament;
use Filament\Navigation\UserMenuItem;
use App\Filament\Auth\MyLogoutResponse;
use Illuminate\Support\ServiceProvider;
use BezhanSalleh\PanelSwitch\PanelSwitch;
use BezhanSalleh\FilamentLanguageSwitch\LanguageSwitch;
use Filament\Http\Responses\Auth\Contracts\LogoutResponse;
use Joaopaulolndev\FilamentEditProfile\Pages\EditProfilePage;
use TomatoPHP\FilamentCms\Facades\FilamentCMS;
use TomatoPHP\FilamentCms\Services\Contracts\CmsType;
use TomatoPHP\FilamentCms\Services\Contracts\CmsAuthor;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(LogoutResponse::class, MyLogoutResponse::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        PanelSwitch::configureUsing(function (PanelSwitch $panelSwitch) {
            $panelSwitch
                ->visible(fn(): bool => auth()->user()?->hasAnyRole([
                    'super_admin',
                    'guru'
                ]))
                ->modalHeading('DI PILIH TUAN PANEL NYA !!')
                ->modalWidth('sm')
                ->slideOver()
                ->icons([
                    'admin' => 'heroicon-o-square-2-stack',
                    'siswa' => 'heroicon-o-square-2-stack',
                    'guru' => 'heroicon-o-square-2-stack',
                    'app' => 'heroicon-o-star',
                ])
                ->iconSize(16)
                ->labels([
                    'admin' => 'Admin',
                    'siswa' => 'Siswa',
                    'guru' => 'Guru',
                ]);
        });

        LanguageSwitch::configureUsing(function (LanguageSwitch $switch) {
            $switch
                ->locales(['ar', 'en', 'fr', 'id']) // also accepts a closure
                // ->flags([
                //     'ar' => asset('flags/saudi-arabia.svg'),
                //     'en' => asset('flags/usa.svg'),
                //     'id' => asset('flags/indonesia.svg'),
                // ])
                // ->flagsOnly()
                ->circular();
        });





        Filament::serving(function () {
            Filament::registerUserMenuItems([
                UserMenuItem::make()
                    ->label(__('filament-edit-profile::default.title'))
                    ->url(EditProfilePage::getUrl())
                    ->icon('heroicon-m-user-circle'),
            ]);
        });
    }
}
