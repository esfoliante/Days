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
</x-app-layout>