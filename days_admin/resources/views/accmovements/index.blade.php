@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Movimentos de conta') }}</h2>

    @livewire('acc-movement.index')
@endsection

