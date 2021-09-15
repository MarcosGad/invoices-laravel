<?php

use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('auth.login');
});

//Auth::routes();
Auth::routes(['register' => false]);
Route::get('/home', 'HomeController@index')->name('home');


Route::resource('invoices', 'InvoicesController');
Route::get('/edit_invoice/{id}', 'InvoicesController@edit');
Route::get('/Status_show/{id}', 'InvoicesController@show')->name('Status_show');
Route::post('/Status_Update/{id}', 'InvoicesController@Status_Update')->name('Status_Update');

Route::resource('sections', 'SectionsController');
Route::resource('products', 'ProductsController');
Route::resource('InvoiceAttachments', 'InvoiceAttachmentsController');


Route::resource('Archive', 'InvoiceAchiveController');
Route::get('Invoice_Paid','InvoicesController@Invoice_Paid');
Route::get('Invoice_UnPaid','InvoicesController@Invoice_UnPaid');
Route::get('Invoice_Partial','InvoicesController@Invoice_Partial');
Route::get('Print_invoice/{id}','InvoicesController@Print_invoice');

//Ajax
Route::get('/section/{id}', 'InvoicesController@getproducts');


//InvoicesDetails
Route::get('/InvoicesDetails/{id}/{notificationId?}', 'InvoicesDetailsController@edit')->name('InvoicesDetails');
Route::get('download/{invoice_number}/{file_name}', 'InvoicesDetailsController@get_file');
Route::get('View_file/{invoice_number}/{file_name}', 'InvoicesDetailsController@open_file');
Route::post('delete_file', 'InvoicesDetailsController@destroy')->name('delete_file');

//export Invoices
Route::get('export_invoices', 'InvoicesController@export');


Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles','RoleController');
    Route::resource('users','UserController');    
});

//Report
Route::get('invoices_report', 'Invoices_Report@index');
Route::post('Search_invoices', 'Invoices_Report@Search_invoices');
Route::get('customers_report', 'Customers_Report@index')->name("customers_report");
Route::post('Search_customers', 'Customers_Report@Search_customers');


//notification
Route::get('MarkAsRead_all','InvoicesController@MarkAsRead_all')->name('MarkAsRead_all');


//DashBoard
Route::get('/{page}', 'AdminController@index');



