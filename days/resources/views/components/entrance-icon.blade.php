<div class="flex gap-4 items-center">
    @if ($image == '')
        <img class="rounded-full w-20 h-20"
            src="https://eu.ui-avatars.com/api/?background=c9c9c9&color=000&name={{ $name }}"
            alt="{{ $name }} entrance pic">
    @else
        <img class="rounded-full w-20 h-20" src="{{ $image }}" alt="{{ $name }} entrance pic">
    @endif
    <div class=" w-32">
        <p class="text-sm font-bold truncate overflow-ellipsis">{{ $name }}</p>
        <p class="text-sm ">{{ $time }} - {{ $isEntrance == true ? 'Entrada' : 'Saída' }}</p>
    </div>
</div>
