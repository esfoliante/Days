@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Schedule') }}</h2>

    @livewire('schedule.index')
@endsection

