@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Turmas') }}</h2>

    @livewire('school-class.index')
@endsection

