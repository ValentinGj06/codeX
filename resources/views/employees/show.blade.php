@extends('layouts.layout')

@section('title', 'Employee')

@section('content')
    <h1 class="title">{{ $employee->first_name.' '.$employee->last_name }}</h1>

    {{--<button class="btn btn-primary" form="add_employee">Add New Employee</button>--}}
    {{--<form action="/{{ $company->id }}/employees/create" id="add_employee" method="post">--}}
        {{--@csrf--}}
        {{--<input type="hidden" name="company_id" value="{{ $company->id }}">--}}
    {{--</form>--}}
    @if ($employee)
        <h2 class="title">Employee Info</h2>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Company Name</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $employee->id }}</td>
                    <td>{{ $company->name }}</td>
                    <td>{{ $employee->first_name }}</td>
                    <td>{{ $employee->last_name }}</td>
                    <td>{{ $employee->email }}</td>
                    <td>{{ $employee->phone }}</td>
                    <td>
                        <a href="/employees/{{ $employee->id }}"><button class="btn btn-primary">View</button></a>
                        <a href="/employees/{{ $employee->id }}/edit"><button class="btn btn-primary">Edit</button></a>
                        <a href="/employees/{{ $employee->id }}/delete"><button class="btn btn-primary">Delete</button></a>
                    </td>
                </tr>
            </tbody>
        </table>
        {{--{{ $employee->links() }}--}}
    @endif
@endsection