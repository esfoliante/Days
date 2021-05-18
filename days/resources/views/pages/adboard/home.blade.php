<x-app-layout>
    <div class="p-5">
        <div class="m-10 grid grid-flow-col grid-cols-3 gap-5">
            <x-information-card title="Utilizadores" content="200">
                <x-feathericon-users class="w-20 ml-auto mr-5" />
            </x-information-card>
            <x-information-card title="Alunos" content="1500">
                <x-feathericon-users class="w-20 ml-auto mr-5" />
            </x-information-card>
            <x-information-card title="Turmas" content="24">
                <x-feathericon-users class="w-20 ml-auto mr-5" />
            </x-information-card>
        </div>
        <div class="m-10 grid grid-cols-12">
            <div class="col-span-12 shadow rounded-md">
                <p class="font-bold text-xl p-10">Registo de entradas e saidas recentes</p>
                <div class="mt-2">
                    <div class="grid grid-flow-row grid-cols-4 gap-5 justify-items-center">
                        <x-entrance-icon image='' name="Pedrinho Abrunhosa" time="08:00" :isEntrance=true />
                        <x-entrance-icon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" :isEntrance=false />
                        <x-entrance-icon image='' name="Pedrinho Abrunhosa" time="08:00" :isEntrance=true />
                        <x-entrance-icon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" :isEntrance=false />
                        <x-entrance-icon image='' name="Pedrinho Abrunhosa" time="08:00" :isEntrance=true />
                        <x-entrance-icon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" :isEntrance=false />
                        <x-entrance-icon image='' name="Pedrinho Abrunhosa" time="08:00" :isEntrance=false />
                        <x-entrance-icon image="profile.jpg" name="Pedrinho Abrunhosa" time="08:00" :isEntrance=false />
                    </div>
                    <p class="mt-3 pb-5 pt-5 pl-10 underline cursor-pointer">Ver mais</p>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
