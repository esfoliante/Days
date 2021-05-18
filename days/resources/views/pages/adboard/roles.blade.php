<x-app-layout>
    <div class="m-10" x-data="{ open: false }">
        <p class="text-3xl font-bold">Cargos</p>
        <div class="mt-10">
            <x-section title="Cargos">
                <p class="bg-green-600 p-3 mb-5 font-medium text-white w-48 rounded-md text-center">Adicionar professor
                </p>
                <div class="grid grid-flow-row grid-cols-5 gap-5">
                    <x-profile-card name="Diretor" image="" canEdit=false></x-profile-card>
                    <x-profile-card name="Professor" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="Funcionário" image="" canEdit=true></x-profile-card>
                </div>
            </x-section>
        </div>
        <x-form-modal title="Cargos" x-show="open" @click.away="open = false">
            <form action="#" method="POST">
                @csrf
                
                <x-label for="name" class="mt-5" value="Nome do cargo" />
                <x-input id="name" class="text-gray-600 mt-2" type="text" name="name" placeholder="Nome do cargo..."
                    required />
                <div class="flex mt-5 gap-3">
                    <x-button-secondary>
                        Fechar
                    </x-button-secondary>
                    <x-button-primary>
                        Adicionar
                    </x-button-primary>
                </div>
            </form>
        </x-form-modal>
    </div>
</x-app-layout>
