@extends('layouts.layout')

@section('title', 'Company')


@section('content')
    <h1 class="title">{{ $company->name }}</h1>

    <button class="btn btn-primary" form="add_employee">Add New Employee</button>
    <form action="/{{ $company->id }}/employees/create" id="add_employee" method="post">
    @csrf
    <input type="hidden" name="company_id" value="{{ $company->id }}">
    </form>
    @if ($employee)
    <h1 class="title">Employees</h1>
    
    <table class="table table-striped">
         <thead>
         <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Actions</th>
         </tr>
         </thead>
         <tbody>
            @foreach($employee as $employees)
                <tr>
                   <td>{{ $employees->id }}</td>
                   <td>{{ $employees->first_name }}</td>
                   <td>{{ $employees->last_name }}</td>
                   <td>{{ $employees->email }}</td>
                   <td>{{ $employees->phone }}</td>
                   <td>
                        <a href="/employees/{{ $employees->id }}"><button class="btn btn-primary">View</button></a>
                        <a href="/employees/{{ $employees->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                        <a href="/employees/{{ $employees->id }}/delete"><button class="btn btn-primary">Delete</button></a>
                   </td>
                </tr>
            @endforeach
         </tbody>
      </table>
      {{ $employee->links() }}
    @endif
@endsection