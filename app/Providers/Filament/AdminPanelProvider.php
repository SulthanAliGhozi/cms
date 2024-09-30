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
use Filament\Navigation\NavigationGroup;
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
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use App\Filament\Resources\StudentResource\Widgets\StatsOverview;
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
                    \BezhanSalleh\FilamentShield\FilamentShieldPlugin::make()
                    // FilamentSpatieRolesPermissionsPlugin::make()

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

    public function boot(): void
    {
        Filament::serving(function () {
            Filament::registerUserMenuItems([
                // UserMenuItem::make()
                //     ->label('Settings')
                //     ->url(PeriodeResource::getUrl())
                //     ->icon('heroicon-s-cog'),
                // ...
            ]);
        });
    }
}
