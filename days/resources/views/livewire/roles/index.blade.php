<div class="m-10">
    <p class="text-3xl font-bold">Cargos</p>
    <div class="mt-10">
        <x-section title="Cargos" clickEvent='create'>
            <div class="grid grid-flow-row grid-cols-5 gap-5">
                @foreach ($roles as $role)
                    <x-profile-card name="{{ $role['name'] }}" image="" canEdit=true></x-profile-card>
                @endforeach 
            </div>
            <div class="mt-5">
                {{ $roles->links() }}
            </div>
        </x-section>
    </div>
    <x-form-modal title="Cargos" :open="$isOpen">
        <form wire:submit.prevent="store">
            @csrf
            
            <x-label for="name" class="mt-5" value="Nome do cargo" />
            <x-input id="name" wire:model="name" class="text-gray-600 mt-2" type="text" name="name" placeholder="Nome do cargo..." />
            <div class="flex mt-5 gap-3">
                <x-button-secondary wire:click="closeModal">
                    Fechar
                </x-button-secondary>
                <x-button-primary>
                    Adicionar
                </x-button-primary>
            </div>
        </form>
    </x-form-modal>
</div>