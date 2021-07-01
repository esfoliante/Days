@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Disciplinas') }}</h2>

    @livewire('subject.index')
@endsection

