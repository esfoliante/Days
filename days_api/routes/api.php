<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TutorsController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\StudentsController;

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::resource('users', UserController::class);

Route::resource('tutors', TutorsController::class);

Route::resource('courses', CoursesController::class);

Route::resource('students', StudentsController::class);
