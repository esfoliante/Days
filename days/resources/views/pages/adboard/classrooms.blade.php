<x-app-layout>
    <div class="m-10">
        <p class="text-3xl font-bold">Salas</p>
        <div class="mt-10">
            <x-section title="Salas">
                <p class="bg-green-600 p-3 mb-5 font-medium text-white w-48 rounded-md text-center">Adicionar Sala</p>
                <div class="grid grid-flow-row grid-cols-4 gap-5">
                    <x-classroom-card department="B" floor="3" classroomNumber="8" image="" canEdit=true/>
                    <x-classroom-card department="B" floor="3" classroomNumber="8" image="classroom-preview.jpg" canEdit=true/>
                    <x-classroom-card department="B" floor="3" classroomNumber="8" image="classroom-preview.jpg" canEdit=false/>
                    <x-classroom-card department="B" floor="3" classroomNumber="8" image="" canEdit=true/>
                </div>
            </x-section>
        </div>
    </div>
    <x-form-modal title="Salas" x-show="open" @click.away="open = false">
        <form action="#" method="POST">
            @csrf

            <x-label for="department" class="mt-5" value="Departamento / Bloco" />
            <x-input id="department" class="text-gray-600 mt-2 w-full" type="text" name="department" placeholder="Departamento / Bloco..." />
            <x-label for="floor" class="mt-5" value="Andar" />
            <x-input id="floor" class="text-gray-600 mt-2 w-full" type="text" name="floor" placeholder="Andar..." />
            <x-label for="number" class="mt-5" value="Andar" />
            <x-input id="number" class="text-gray-600 mt-2 w-full" type="text" name="number" placeholder="Número da sala..." />
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