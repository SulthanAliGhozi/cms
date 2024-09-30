<?php

namespace App\Filament\Pages;

use App\Filament\Resources\StudentResource\Widgets\StatsOverview;
use Filament\Pages\Page;
use Filament\Widgets\StatsOverviewWidget\Stat;

class Report extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.report';

    public function data()
    {
        return StatsOverview::class;
    }
}
