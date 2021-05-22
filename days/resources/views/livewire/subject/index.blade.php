<div>
    <div class="m-10">
        <p class="text-3xl font-bold">Disciplinas</p>
        <div class="mt-10">
            <x-section title="Disciplinas" clickEvent='create'>
                <div class="grid grid-flow-row grid-cols-5 gap-5">
                    @foreach ($subjects as $subject)
                        <x-profile-card name="{{ $subject['name'] }}" image="" canEdit=true></x-profile-card>
                    @endforeach 
                </div>
                <div class="mt-5">
                    {{ $subjects->links() }}
                </div>
            </x-section>
        </div>
    </div>
    <x-form-modal title="Disciplinas" :open="$isOpen">
        <form wire:submit.prevent="store">
            <x-label for="name" class="mt-5" value="Nome da disciplina"  />
            <x-input id="name" class="text-gray-600 mt-2" type="text" name="name" placeholder="Nome da disciplina..."
                wire:model="name" />
            <div class="flex mt-5 gap-3">
                <x-button-secondary wire:click="closeModal">
                    Fechar
                </x-button-secondary>
                <x-button-primary type="submit">
                    Adicionar
                </x-button-primary>
            </div>
        </form>
    </x-form-modal>
</div>
