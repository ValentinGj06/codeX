<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes([
	'register' => false]);

Route::get('/home', 'HomeController@index')->name('home');
// Companies routes
Route::get('/companies', 'CompanyController@index')->name('companies');
Route::get('/companies/create', 'CompanyController@create')->name('create');
Route::post('/companies', 'CompanyController@store')->name('store');
Route::get('/companies/{company}', 'CompanyController@show')->name('show');
Route::get('/companies/{company}/edit', 'CompanyController@edit')->name('edit');
Route::patch('/companies/{company}', 'CompanyController@update')->name('update');
Route::delete('/companies/{company}', 'CompanyController@destroy')->name('destroy');
Route::get('/companies/{company}/delete', 'CompanyController@destroy')->name('delete');
// Employee routes
Route::get('/employees', 'EmployeeController@index')->name('employees');
Route::get('/{company}/employees/create', 'EmployeeController@create')->name('create');
Route::post('/{company}/employees/create', 'EmployeeController@create')->name('create_post');
Route::post('/employees', 'EmployeeController@store')->name('store');
Route::get('/employees/{employee}', 'EmployeeController@show')->name('show');
Route::get('/employees/{employee}/edit', 'EmployeeController@edit')->name('edit');
Route::patch('/employees/{employee}', 'EmployeeController@update')->name('update');
Route::delete('/employees/{employee}', 'EmployeeController@destroy')->name('destroy');
Route::get('/employees/{employee}/delete', 'EmployeeController@destroy')->name('delete');