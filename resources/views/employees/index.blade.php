@extends('layouts.layout')

@section('title', 'Employees')


@section('content')
    <h1 class="title">Employees</h1>
    
    <table class="table table-striped">
         <thead>
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
         </tr>
         </thead>
         <tbody>
            @foreach($employees as $employee)
                <tr>
                   <td>{{ $employee->id }}</td>
                   <td>{{ $employee->first_name }}</td>
                   <td>{{ $employee->email }}</td>
                   <td>
                        <a href="/employees/{{ $employee->id }}"><button class="btn btn-primary">View</button></a>
                        <a href="/employees/{{ $employee->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                        <a href="/employees/{{ $employee->id }}/delete"><button class="btn btn-primary">Delete</button></a>
                   </td>
                </tr>
            @endforeach
         </tbody>
      </table>
      {{ $employees->links() }}
@endsection