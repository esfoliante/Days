<?php use App\Http\Controllers\Web\ClassroomsController; ?>

<div class="col-span-2 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5 text-white" style="background-image: url('{{ ClassroomsController::checkBackgroundImage($image, ClassroomsController::checkName($department, $floor, $classroomNumber)) }}')">
    <p class="text-xl font-bold mt-5 truncate overflow-ellipsis">{{ ClassroomsController::checkName($department, $floor, $classroomNumber) }}</p>
    <p class="mt-2">Bloco <span class="font-bold">{{ $department }}</span></p>
    <p>Andar <span class="font-bold">{{ $floor }}</span></p>
    <p>Número da sala <span class="font-bold">{{ $classroomNumber }}</span></p>
    @if ($canEdit == 'true')
        <div class="flex mt-10 text-center gap-5">
            <a href='#'>
                <div
                    class="text-center w-10 h-10  mt-2 flex items-center justify-center bg-yellow-300 rounded-md ml-auto cursor-pointer">
                    <x-feathericon-edit class=" text-white" />
                </div>
            </a>
            <a href='#'>
                <div
                    class="text-center w-10 h-10 mt-2 flex items-center justify-center bg-green-400 rounded-md mr-auto cursor-pointer">
                    <x-feathericon-eye class=" text-white" />
                </div>
            </a>
        </div>
    @else
        <a href='#'>
            <div
                class="text-center w-10 h-10 mt-10 flex items-center justify-center bg-green-400 rounded-md mr-auto cursor-pointer">
                <x-feathericon-eye class=" text-white" />
            </div>
        </a>
    @endif
</div>