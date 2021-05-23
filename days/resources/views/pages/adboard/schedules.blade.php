<x-app-layout>
    <div class="m-10">
        <p class="text-3xl font-bold">Horários</p>
        <div class="mt-10">
            <x-section title="Turmas" button_title="Horários">
                <div class="grid grid-flow-row grid-cols-5 gap-5">
                    <x-profile-card name="12º ITM" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="12º AM" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="12º CGE" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="12º CM" image="" canEdit=true></x-profile-card>
                    <x-profile-card name="12º TSI" image="" canEdit=true></x-profile-card>
                </div>
            </x-section>
        </div>
    </div>
</x-app-layout>