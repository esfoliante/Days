@extends('layouts.app')

@section('content')
    <h2 class="mb-4">{{ __('Parent Model') }}</h2>

    @livewire('parent-model.index')
@endsection

