@extends('layouts.layout')

@section('title', 'Companies')


@section('content')
    <h1 class="title">Companies</h1>

    <a class="nav-item nav-link" href="/companies/create"><button class="btn btn-primary" form="add_employee">Add New Company</button></a>
    <table class="table table-striped">
         <thead>
         <tr>
            <th>ID</th>
            <th>Logo</th>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
         </tr>
         </thead>
         <tbody>
            @foreach($companies as $company)
                <tr>
                   <td>{{ $company->id }}</td>
                   <td><img src="{{ asset("storage/images/$company->logo") }}"></td>
                   <td>{{ $company->name }}</td>
                   <td>{{ $company->email }}</td>
                   <td>
                        <a href="/companies/{{ $company->id }}"><button class="btn btn-primary">View</button></a>
                        <a href="/companies/{{ $company->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                        <a href="/companies/{{ $company->id }}/delete"><button class="btn btn-primary">Delete</button></a>
                   </td>
                </tr>
            @endforeach
         </tbody>
      </table>
      {{ $companies->links() }}
@endsection