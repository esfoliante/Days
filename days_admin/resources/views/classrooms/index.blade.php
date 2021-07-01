@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Classrooms') }}</h2>

    @livewire('classroom.index')
@endsection

