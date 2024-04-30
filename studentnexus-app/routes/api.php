<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

use App\Models\Student; // Make sure to import the Student model

Route::get('/students', function () {
    return Student::all();
});

Route::post('/students', function (Request $request) {
    $student = Student::create($request->all());
    return $student;
});
