<div>
    <div class="flex items-center justify-between">
        <p class="text-2xl font-bold">{{ $title }}</p>
        <p class="select-none cursor-pointer bg-green-600 hover:bg-green-800 transition duration-300 ease-in-out p-3 mb-5 font-medium text-white w-auto text-sm rounded-md text-center" wire:click="{{ $clickEvent ?? '' }}">Adicionar {{ $button_title }}</p>
    </div>
    <div>
        <input wire:model='searchTerm' />
    </div>
    <div class="mt-5">
        {{ $slot }}
    </div>
</div>
