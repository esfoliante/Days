@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Cargos') }}</h2>

    @livewire('role.index')
@endsection
