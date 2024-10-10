<?php

namespace App\Filament\Resources\NilaiResource\Pages;

use App\Filament\Resources\NilaiResource;
use Closure;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Forms\Get;
use Filament\Resources\Pages\EditRecord;

class EditNilai extends EditRecord
{
    protected static string $resource = NilaiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getSaveFormAction(): Action
    {
        return Action::make('create')
        ->disabled(function (): bool {
            //condition here...
            return $this->data['nilai'] > 100 ?  true :  false;
        });

    }
}
