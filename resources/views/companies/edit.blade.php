@extends('layouts.layout')

@section('title', 'Edit')


@section('content')
<div class="container">
    <form method="POST" action="/companies/{{ $company->id }}" enctype="multipart/form-data">
        @csrf
        {{ method_field('PATCH') }}
        <div class="form-group row">
            <label for="name" class="col-sm-2 col-form-label">Company Name</label>
            <div class="col-sm-3">   
                <input type="text" name="name" class="form-control" placeholder="Company Name" value="{{ $company->name }}" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email address</label>
            <div class="col-sm-3">
                <input type="email" name="email" class="form-control" placeholder="Company Email" value="{{ $company->email }}">
            </div>
        </div>
        <div class="form-group row">
            <label for="logo" class="col-sm-2 col-form-label">Logo</label>
            <div class="col-sm-3">
                <input type="file" class="form-control-file" name="logo" value="{{ $company->logo }}">
            </div>
        </div>
        <div class="form-group row">
            <label for="website" class="col-sm-2 col-form-label">Company Website</label>
            <div class="col-sm-3">
                <input type="text" name="website" class="form-control" placeholder="Company Website" value="{{ $company->website }}">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-2">
                <button type="submit" class="btn btn-block btn-primary">Update Company</button>
            </div>
            <div class="col-sm-2">
                <button type="submit" form="delete_company" class="btn btn-danger">Delete</button>
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
<form action="/companies/{{$company->id}}" id="delete_company" method="post">
    @csrf
    @method('DELETE')
</form>
@endsection
