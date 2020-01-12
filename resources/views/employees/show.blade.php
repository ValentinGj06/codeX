@extends('layouts.layout')

@section('title', 'Employee')

@section('content')
    <h1 class="title">{{ $employee->first_name }}</h1>
@endsection