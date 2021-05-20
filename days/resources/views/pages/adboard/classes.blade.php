<x-app-layout>
    <div class="m-10">
        <p class="text-3xl font-bold">Turmas</p>
        <div class="mt-10">
            <x-section title="Turmas">
                <p class="bg-green-600 p-3 mb-5 font-medium text-white w-48 rounded-md text-center">Adicionar disciplina
                </p>
                <div class="grid grid-flow-row grid-cols-5 gap-5">
                    <x-profile-card name="12º ITM" image="" :canEdit=true></x-profile-card>
                    <x-profile-card name="12º AM" image="" :canEdit=true></x-profile-card>
                    <x-profile-card name="12º CGE" image="" :canEdit=true></x-profile-card>
                    <x-profile-card name="12º CM" image="" :canEdit=true></x-profile-card>
                    <x-profile-card name="12º TSI" image="" :canEdit=true></x-profile-card>
                </div>
            </x-section>
        </div>
    </div>
    <x-form-modal title="Turmas" x-show="open" @click.away="open = false">
        <form action="#" method="POST">
            @csrf

            <x-label for="name" class="mt-5" value="Nome da turma" />
            <x-input id="name" class="text-gray-600 mt-2 w-full" type="text" name="name" placeholder="Nome da turma..." />
            <x-label for="course" class="mt-5" value="Curso" />
            <select name="course" id="course" class="text-gray-600 mt-2 rounded border-gray-300">
                <option value="">Informática e Tecnologias Multimédia</option>
                <option value="">Comunicação Multimédia</option>
                <option value="">Tecnologias e Sistemas de Informação</option>
            </select>
            <x-label for="year" class="mt-5" value="Ano" />
            <select name="year" id="year" class="text-gray-600 mt-2 rounded border-gray-300 w-full">
                <option value="10">10º ano</option>
                <option value="11">11º ano</option>
                <option value="12">12º ano</option>
            </select>
            <x-label for="director" class="mt-5" value="Diretor de turma" />
            <x-input id="director" class="text-gray-600 mt-2 w-full" type="text" name="director" placeholder="Diretor de turma..." />
            <x-label for="rep" class="mt-5" value="Delegado(a) de turma" />
            <x-input id="rep" class="text-gray-600 mt-2 w-full" type="text" name="rep" placeholder="Delegado(a) de turma..." />
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
