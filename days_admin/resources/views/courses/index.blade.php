@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Course') }}</h2>

    @livewire('course.index')
@endsection

