@extends('layouts.layout')

@section('title', 'Create')


@section('content')
<div class="container">
    <h1 class="title">Create New Company</h1>
    <form method="POST" action="/companies" enctype="multipart/form-data">
        @csrf
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">Company Name</label>
            <div class="col-sm-3">   
                <input type="text" name="name" class="form-control" placeholder="Company Name" value="{{ old('name') }}" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email address</label>
            <div class="col-sm-3">
                <input type="email" name="email" class="form-control" placeholder="Company Email" value="{{ old('email') }}">
            </div>
        </div>
        <div class="form-group row">
            <label for="logo" class="col-sm-2 col-form-label">Logo</label>
            <div class="col-sm-3">
                <input type="file" class="form-control-file" class="form-control" name="logo" value="{{ old('logo') }}">
            </div>
        </div>
        <div class="form-group row">
            <label for="website" class="col-sm-2 col-form-label">Company Website</label>
            <div class="col-sm-3">
                <input type="text" name="website" class="form-control" placeholder="Company Website" value="{{ old('website') }}">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-2">
                <button type="submit" class="btn btn-primary">Create Company</button>
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
@endsection