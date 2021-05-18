<x-app-layout>
    <div class="m-10">
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
    </div>
</x-app-layout>
