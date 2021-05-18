<div class="pb-10 shadow rounded-md flex flex-col items-center justify-center ">
    <div class=" flex items-center">
        @if ($image == '')
            <img class="w-32 h-32 rounded-full mt-8"
                src="https://eu.ui-avatars.com/api/?background=c9c9c9&color=000&name={{ $name }}"
                alt="{{ $image }} entrance pic">
        @else
            <img class="w-32 h-32 rounded-full mt-8" src="{{ $image }}" alt="{{ $name }} entrance pic">
        @endif
    </div>
    <p class="w-full truncate overflow-ellipsis text-lg font-medium text-center px-5 mt-5">{{ $name }}</p>
    @if ($canEdit == 'true')
        <div class="flex  text-center gap-5">
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
                class="text-center w-10 h-10 mt-2 flex items-center justify-center bg-green-400 rounded-md mr-auto cursor-pointer">
                <x-feathericon-eye class=" text-white" />
            </div>
        </a>
    @endif

</div>
