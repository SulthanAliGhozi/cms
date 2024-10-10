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
use App\Models\User;
use Closure;
use Dotenv\Exception\ValidationException;
use Filament\Actions\Action;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Notifications\Notification;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;

class NilaiResource extends Resource
{
    use HandlesAuthorization;

    protected static ?string $model = Nilai::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                    ->schema([
                        Select::make('class_id')
                                ->options(Classroom::all()->pluck('name', 'id'))
                                ->label('Class'),
                        Select::make('periode_id')
                            ->label("Periode")
                            ->searchable()
                            ->options(Periode::all()->pluck('name', 'id')),
                        Select::make('subject_id')
                            ->label("Subject")
                            ->searchable()
                            ->options(Subject::all()->pluck('name', 'id')),
                        Select::make('category_nilai_id')
                            ->label("Category Nilai")
                            ->searchable()
                            ->options(CategoryNilai::all()->pluck('name', 'id')),
                        Select::make('student_id')
                            ->options(Student::all()->pluck('name', 'id'))
                            ->label('Student'),
                        TextInput::make('nilai')
                            ->type('number')
                            ->live()
                            ->rules([
                                fn (Get $get): Closure => function (string $attribute, $value, Closure $fail) use ($get) {
                                    if ($get('nilai') > 100) {
                                        $fail("Nilai is to big.");
                                    }
                                },
                            ])
                    ])->columns(3)
            ]);
    }

    protected function onValidationError(ValidationException $exception): void
    {
        Notification::make()
            ->title($exception->getMessage())
            ->danger()
            ->send();
    }

    public static function table(Table $table): Table
    {
        // $queryString = request()->getQueryString();
        $decodeQueryString = urldecode(request()->getQueryString());
        return $table
            ->columns([
                TextColumn::make('student.name'),
                TextColumn::make('subject.name'),
                TextColumn::make('category_nilai.name'),
                TextColumn::make('nilai'),
                TextColumn::make('periode.name')
            ])
            ->filters([
                SelectFilter::make('category_nilai_id')
                    ->options(CategoryNilai::pluck('name', 'id')),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])

            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
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
            'view' => Pages\ViewNilai::route('/{record}'),
            'detail' => Pages\ViewNilai::route('/{record}/detail'),
        ];
    }
}
