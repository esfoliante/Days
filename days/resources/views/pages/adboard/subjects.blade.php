<x-app-layout>
    <div class="m-10">
        <p class="text-3xl font-bold">Disciplinas</p>
        <div class="mt-10">
            <x-section title="Disciplinas">
                <p class="bg-green-600 p-3 mb-5 font-medium text-white w-48 rounded-md text-center">Adicionar disciplina
                </p>
                <div class="grid grid-flow-row grid-cols-5 gap-5">
                    <x-profile-card name="Português" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="Matemática A" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="Programação Internet" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="Tecnologias de Desenvolvimento Multimédia" image="" canEdit=true>
                    </x-profile-card>
                    <x-profile-card name="Implementação e Exploração de Bases de Dados" image="" canEdit=true>
                    </x-profile-card>
                </div>
            </x-section>
        </div>
    </div>
    <x-form-modal title="Disciplinas" x-show="open" @click.away="open = false">
        <form action="#" method="POST">
            @csrf

            <x-label for="name" class="mt-5" value="Nome da disciplina" />
            <x-input id="name" class="text-gray-600 mt-2" type="text" name="name" placeholder="Nome da disciplina..."
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
</x-app-layout>
