@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Student') }}</h2>

    @livewire('student.index')
@endsection

