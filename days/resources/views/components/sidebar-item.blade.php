<a href="{{ Route::has(str_replace('/', '', $location)) ? route(str_replace('/', '', $location)) : '#' }}">
    @if(!request()->routeIs(str_replace('/', '', $location)))
        <div
        class="grid h-14 w-full hover:bg-gray-300 hover:bg-opacity-40 pl-10 cursor-pointer items-center transition duration-200 ease-in-out">
            <div class="flex items-center gap-4">
                <div class="ml-5">
                    {{ $slot }}
                </div>
                <p class="font-medium">{{ $title }}</p>
            </div>
        </div>
    @else
        <div
        class="grid h-14 w-full bg-green-400 text-white hover:bg-green-500 hover:bg-opacity-80 pl-10 cursor-pointer items-center transition duration-200 ease-in-out">
            <div class="flex items-center gap-4">
                <div class="ml-5">
                    {{ $slot }}
                </div>
                <p class="font-medium">{{ $title }}</p>
            </div>
        </div>
    @endif
</a>
