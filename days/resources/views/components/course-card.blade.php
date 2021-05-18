<?php use App\Http\Controllers\Web\CoursesController; ?>

<div class="col-span-2 h-60 shadow rounded-md items-center text-left bg-cover bg-center pl-5" style="background-image: url('{{ CoursesController::checkBackgroundImage($image) }}')">
    <p class="text-xl text-white font-bold mt-5 truncate overflow-ellipsis">{{ $name }}</p>
    <p class="text-md text-white mt-5">{{ $slug }} - <span class="font-medium">{{ $director }}</span></p>
    <div class="flex mt-20 text-center gap-5">
        <a href='#'>
            <div
                class="text-center w-10 h-10  mt-2 flex items-center justify-center bg-yellow-300 rounded-md ml-auto cursor-pointer">
                <x-feathericon-edit class="text-white" />
            </div>
        </a>
        <a href='#'>
            <div
                class="text-center w-10 h-10 mt-2 flex items-center justify-center bg-green-400 rounded-md mr-auto cursor-pointer">
                <x-feathericon-eye class="text-white" />
            </div>
        </a>
    </div>
</div>