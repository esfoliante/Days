<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
    
    <script type="module" src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine-ie11.min.js" defer></script>

    @livewireStyles
</head>

<body class="font-display antialiased">
    <div class="min-h-screen w-full flex">
        <x-sidebar />
        <div class="w-full">
            <div>
                <!-- Page Heading -->
                <header class="bg-white shadow">
                    <div class="min-w-full py-6 sm:px-6 lg:px-8">
                        <div class="flex items-end justify-between space-y-auto px-10 w-full">
                            <x-feathericon-menu class="w-20" />
                            <div class="flex col-span-2 items-center">

                                @if (Auth::user()->profile_picture == '')
                                    <img class="rounded-full w-10 h-10"
                                        src="https://eu.ui-avatars.com/api/?background=059669&color=fff&name={{ auth()->user()->name }}"
                                        alt="{{ Auth::user()->name }} profile's pic">
                                @else
                                    <img class="rounded-full w-10 h-10 mr-5"
                                        src="/upload/{{ Auth::user()->profile_picture }}"
                                        alt="{{ Auth::user()->name }} profile's pic">
                                @endif
                                <a href="{{ route('logout') }}">
                                    <p class="ml-5">Sair</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </header>

                <!-- Page Content -->
                <main>
                    {{ $slot }}
                </main>
            </div>
        </div>
    </div>

    @livewireScripts
</body>

</html>
