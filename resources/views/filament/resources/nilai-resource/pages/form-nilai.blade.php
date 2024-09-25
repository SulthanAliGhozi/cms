<x-filament-panels::page>
    <form method="POST" wire:submit="save">
        {{ $this->form }}
        <button type="submit" class="mt-4 bg-fuchsia-500 w-40 hover:bg-fuchsia-400 text-white font-bold py-2">
            SAVE
        </button>
    </form>
</x-filament-panels::page>