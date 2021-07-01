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
Auth::routes();

Route::middleware('auth')->group(function () {

    Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    Route::resources([
        'users' => App\Http\Controllers\UserController::class,
		'tutors' => App\Http\Controllers\TutorController::class,
		'courses' => App\Http\Controllers\CourseController::class,
		'students' => App\Http\Controllers\StudentController::class,
		'parentmodels' => App\Http\Controllers\ParentModelController::class,
		'schoolclasses' => App\Http\Controllers\SchoolClassController::class,
		'accmovements' => App\Http\Controllers\AccMovementController::class,
		'subjects' => App\Http\Controllers\SubjectController::class,
		'communicatios' => App\Http\Controllers\CommunicatioController::class,
		'schedules' => App\Http\Controllers\ScheduleController::class,
		'classrooms' => App\Http\Controllers\ClassroomController::class,
    ]);
});
