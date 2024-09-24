<?php

namespace App\Filament\Resources;

use App\Filament\Resources\NilaiResource\Pages;
use App\Filament\Resources\NilaiResource\RelationManagers;
use App\Models\CategoryNilai;
use App\Models\Classroom;
use App\Models\Nilai;
use App\Models\Periode;
use App\Models\Student;
use App\Models\Subject;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

use function Laravel\Prompts\select;

class NilaiResource extends Resource
{
    protected static ?string $model = Nilai::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                ->schema([
                    Select::make('classrooms')
                    ->options(Classroom::all()->pluck('name', 'id'))
                    ->label('Kelas'),
                    Select::make('periode')
                    ->label("periode")
                    ->searchable()
                    ->options(Periode::all()->pluck('name','id')),
                    Select::make('subject_id')
                    ->label("Subject")
                    ->searchable()
                    ->options(Subject::all()->pluck('name', 'id')),
                    Select::make('category_nilai')
                    ->label("Category Nilai")
                    ->searchable()
                    ->options(CategoryNilai::all()->pluck('name', 'id')),
                    Select::make('student')
                    ->searchable()
                    ->label("Siswa")
                    ->options(Student::all()->pluck('name','id')),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('student.name'),
                TextColumn::make('subject.name'),
                TextColumn::make('category_nilai.name'),
                TextColumn::make('nilai'),
                TextColumn::make('periode.name'),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListNilais::route('/'),
            'create' => Pages\CreateNilai::route('/create'),
            'edit' => Pages\EditNilai::route('/{record}/edit'),
        ];
    }
}