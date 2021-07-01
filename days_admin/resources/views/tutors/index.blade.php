@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Tutors') }}</h2>

    @livewire('tutor.index')
@endsection

