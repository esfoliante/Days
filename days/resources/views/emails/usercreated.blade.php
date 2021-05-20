@component('mail::message')
# Seja bem-vindo(a) ao Days!

Olá **{{ $name }}**! A sua escola acabou de criar uma conta para si com as seguintes credenciais:

**Email:** {{ $email }}

**Password:** {{ $password }}

@component('mail::button', ['url' => 'http://chihuahuaspin.com/'])
    Aplicação mobile para pais e alunos
@endcomponent

**Obrigado** por estar connosco,<br><br>
{{ config('app.name') }}
@endcomponent
