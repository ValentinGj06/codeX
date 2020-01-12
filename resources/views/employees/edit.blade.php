@extends('layouts.layout')

@section('title', 'Edit')


@section('content')
<div class="container">
    <h1 class="title">Edit Employee</h1>
    <form method="POST" action="/employees/{{ $employee->id }}">
        @csrf
        {{ method_field('PATCH') }}
        <div class="form-group row">
            <label for="first_name" class="col-sm-2 col-form-label">First Name</label>
            <div class="col-sm-3">   
                <input type="text" name="first_name" class="form-control" placeholder="First Name" value="{{ $employee->first_name }}" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="last_name" class="col-sm-2 col-form-label">Last Name</label>
            <div class="col-sm-3">   
                <input type="text" name="last_name" class="form-control" placeholder="Last Name" value="{{ $employee->last_name }}" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email address</label>
            <div class="col-sm-3">
                <input type="email" name="email" class="form-control" placeholder="Employee Email" value="{{ $employee->email }}">
            </div>
        </div>
        <div class="form-group row">
            <label for="phone" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" name="phone" placeholder="Phone Number" value="{{ $employee->phone }}">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-2">
                <button type="submit" class="btn btn-primary">Update Employee</button>
            </div>
            <div class="col-sm-2">
                <button type="submit" form="delete_employee" class="btn btn-danger">Delete</button>
            </div>
        </div>
        @if ($errors->any())
            <div class="alert alert-warning" role="alert">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    </form>
</div>
<form action="/employees/{{$employee->id}}" id="delete_employee" method="post">
    @csrf
    @method('DELETE')
</form>
@endsection