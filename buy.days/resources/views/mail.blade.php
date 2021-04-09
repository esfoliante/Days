<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="{{ URL::asset('logo-min.svg') }}" type="image/x-icon" />
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <title>Buy Days</title>
</head>

<body>
    <div class="ml-10 mt-5">
        <img src="logo.svg" alt="Logo" class="w-40">
        <h1 class="mt-10 font-bold text-3xl">Obrigado!</h1>
        <p class="mt-5">Obrigado por ter adquirido o seu produto Days. <span
                class="italic text-green-700 font-medium">'Make
                it
                better'</span> é o nosso slogan e garantimos que a sua escola ficará muio mais interativa!</p>
        <p class="mt-2">Para poder ativar o seu produto por favor introduza o código abaixo e pode começar a fazer parte
            da
            inovação!</p>
        <h3 class="text-center mt-10 p-1 bg-gray-300 bg-opacity-80 font-medium w-32 self-center">{{ rand() }}
        </h3>
    </div>
</body>

</html>
