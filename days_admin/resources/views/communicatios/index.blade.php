@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Communicatio') }}</h2>

    @livewire('communicatio.index')
@endsection

