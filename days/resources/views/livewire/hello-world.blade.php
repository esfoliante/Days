<div>
    
    @if($bazinga)
        <h1>Bazing</h1>
    @endif

    <button wire:click="showBazinga(true)" >Click me</button>
    <input type="text" wire:model="message" />
    {{ $message }}
</div>
