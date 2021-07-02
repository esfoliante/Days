@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Salas') }}</h2>

    @livewire('classroom.index')
@endsection

