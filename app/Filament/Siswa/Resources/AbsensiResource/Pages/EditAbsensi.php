<?php

namespace App\Filament\Siswa\Resources\AbsensiResource\Pages;

use App\Filament\Siswa\Resources\AbsensiResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAbsensi extends EditRecord
{
    protected static string $resource = AbsensiResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
