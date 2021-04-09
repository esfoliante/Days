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
    <div class="h-screen w-screen bg-fit bg-center" style="background-image: url('background.jpg')">
        <div class="flex flex-col">
            <img src="logo.svg" alt="Days logo" class="w-72 md:w-96 mt-20 self-center">
            <form action="" class="self-center flex flex-col">
                <input type="text" name="txtName" placeholder="Nome da escola"
                    class="mt-20 p-2 rounded-sm w-80 md:w-96 border-2 border-gray-200" />
                <input type="email" name="email" placeholder="E-mail da escola" class="mt-5 p-2 rounded-sm
                    w-80 md:w-96 border-2 border-gray-200">
                <input type="text" name="txtNIF" placeholder="Número de contribuinte"
                    class="mt-5 p-2 rounded-sm w-80 md:w-96 border-2 border-gray-200" />
                <a href="{{ route('purchase') }}" class="self-center">
                    <p class="bg-green-800 text-white p-3 w-80 text-center rounded-md font-medium bg-opacity-60 mt-10">
                        Efetuar
                        compra
                    </p>
                </a>
            </form>
        </div>
    </div>
</body>

</html>
