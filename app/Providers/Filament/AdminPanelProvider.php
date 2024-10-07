<?php

namespace App\Providers\Filament;

use Filament\Pages;
use Filament\Panel;
use App\Models\Team;
use Filament\Widgets;
use Filament\PanelProvider;
use App\Filament\Auth\Login;
use Filament\Pages\Dashboard;
use Filament\Facades\Filament;
use App\Filament\Auth\Register;
use Filament\Support\Colors\Color;
use Filament\Navigation\UserMenuItem;
use Filament\Navigation\NavigationItem;
use App\Filament\Resources\UserResource;
use Awcodes\LightSwitch\Enums\Alignment;
use Filament\Navigation\NavigationGroup;
use Awcodes\LightSwitch\LightSwitchPlugin;
use Filament\Http\Middleware\Authenticate;
use Filament\Navigation\NavigationBuilder;
use App\Filament\Resources\PeriodeResource;
use App\Filament\Resources\StudentResource;
use App\Filament\Resources\SubjectResource;
use App\Filament\Resources\TeacherResource;
use App\Filament\Pages\Tenancy\RegisterTeam;
use App\Filament\Resources\ClassroomResource;
use App\Filament\Resources\DepartmentsResource;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\Cookie\Middleware\EncryptCookies;
use App\Filament\Resources\CategoryNilaiResource;
use App\Filament\Resources\StudentHasClassResource;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Swis\Filament\Backgrounds\ImageProviders\MyImages;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Swis\Filament\Backgrounds\FilamentBackgroundsPlugin;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use App\Filament\Resources\StudentResource\Widgets\StatsOverview;
use Joaopaulolndev\FilamentEditProfile\FilamentEditProfilePlugin;
use Filament\Navigation\MenuItem;
use Joaopaulolndev\FilamentEditProfile\Pages\EditProfilePage;
use Althinect\FilamentSpatieRolesPermissions\FilamentSpatieRolesPermissionsPlugin;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->sidebarCollapsibleOnDesktop(true)
            ->id('admin')
            ->path('admin')
            ->registration(Register::class)
            ->login(Login::class)
            ->brandName('Testing')
            // ->brandLogo(asset('images/backgrounds/profil_lk.jpeg'))
            // ->brandLogoHeight('2rem')
            ->colors([
                'primary' => Color::Fuchsia,
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                StatsOverview::class
            ])
            ->middleware([
                \Hasnayeen\Themes\Http\Middleware\SetTheme::class,
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->viteTheme('resources/css/filament/admin/theme.css')
            ->plugins(
                [
                    \BezhanSalleh\FilamentShield\FilamentShieldPlugin::make(),
                    // FilamentSpatieRolesPermissionsPlugin::make()
                    LightSwitchPlugin::make()
                        ->position(Alignment::BottomRight),
                    // // AVAILABLE POSISI
                    // Alignment::TopLeft
                    // Alignment::TopCenter
                    // Alignment::TopRight
                    // Alignment::BottomLeft
                    // Alignment::BottomCenter
                    // Alignment::BottomRight,
                    FilamentBackgroundsPlugin::make()
                        ->showAttribution(false)
                        ->imageProvider(
                            MyImages::make()
                                ->directory('images/backgrounds')
                        ),
                    \Hasnayeen\Themes\ThemesPlugin::make(),
                    FilamentEditProfilePlugin::make()
                        ->shouldShowAvatarForm(
                            value: true,
                            directory: 'avatars', // image will be stored in 'storage/app/public/avatars
                            rules: 'mimes:jpeg,png,jpg|max:1024' //only accept jpeg and png files with a maximum size of 1MB
                        ),
                    \TomatoPHP\FilamentCms\FilamentCMSPlugin::make()
                        ->useCategory()
                        ->usePost()
                        ->allowExport()
                        ->allowImport()
                        ->allowBehanceImport()
                        ->usePageBuilder()
                ]
            )
            // ->tenant(Team::class)
            // ->tenantRegistration(RegisterTeam::class)
            // ->navigation(function (NavigationBuilder $builder): NavigationBuilder {
            //     return $builder->groups([
            //         NavigationGroup::make()
            //             ->items([
            //                 NavigationItem::make('Dashboard')
            //                 ->icon('heroicon-o-home')
            //                 ->isActiveWhen(fn (): bool => request()->routeIs('filament.admin.pages.dashboard'))
            //                 ->url(fn (): string => Dashboard::getUrl()),
            //             ]),
            //         NavigationGroup::make('Academic')
            //             ->items([
            //                 ...TeacherResource::getNavigationItems(),
            //                 ...StudentResource::getNavigationItems(),
            //                 ...StudentHasClassResource::getNavigationItems(),
            //                 ...SubjectResource::getNavigationItems(),
            //             ]),
            //         NavigationGroup::make('Source')
            //             ->items([
            //                 ...CategoryNilaiResource::getNavigationItems(),
            //                 ...ClassroomResource::getNavigationItems(),
            //                 ...DepartmentsResource::getNavigationItems(),
            //             ]),
            //         NavigationGroup::make('Setting')
            //             ->items([
            //                 ...PeriodeResource::getNavigationItems(),
            //                 NavigationItem::make('Roles')
            //                     ->icon('heroicon-o-user-group')
            //                     ->isActiveWhen(fn (): bool => request()->routeIs([
            //                         'filament.admin.resources.roles.index',
            //                         'filament.admin.resources.roles.create',
            //                         'filament.admin.resources.roles.view',
            //                         'filament.admin.resources.roles.edit'
            //                     ]))
            //                     ->hidden(fn(): bool => ! auth()->user()->can('role-permission'))
            //                     ->url(fn (): string => '/admin/roles'),
            //                 NavigationItem::make('Permissions')
            //                     ->icon('heroicon-o-lock-closed')
            //                     ->isActiveWhen(fn (): bool => request()->routeIs([
            //                         'filament.admin.resources.permissions.index',
            //                         'filament.admin.resources.permissions.create',
            //                         'filament.admin.resources.permissions.view',
            //                         'filament.admin.resources.permissions.edit'
            //                     ]))
            //                     ->hidden(fn(): bool => ! auth()->user()->can('role-permission'))
            //                     ->url(fn (): string => '/admin/permissions'),
            //                 ...UserResource::getNavigationItems()
            //             ]),
            //     ]);
            // })

            ->databaseNotifications();
    }

    // public function boot(): void
    // {
    //     Filament::serving(function () {
    //         Filament::registerUserMenuItems([
    //             UserMenuItem::make()
    //                 ->label(__('filament-edit-profile::default.title'))
    //                 ->url(EditProfilePage::getUrl())
    //                 ->icon('heroicon-m-user-circle'),
    //         ]);
    //     });
    // }
}
