<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TutorsController;
use App\Http\Controllers\CoursesController;
use App\Http\Controllers\StudentsController;
use App\Http\Controllers\SubjectsController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\EntrancesController;
use App\Http\Controllers\ClassroomsController;
use App\Http\Controllers\ClassesController;
use App\Http\Controllers\NoticesController;
use App\Http\Controllers\ParentsController;
use App\Http\Controllers\AccountMovementsController;
use App\Http\Controllers\MeetingsController;
use App\Http\Controllers\MarksController;
use App\Http\Controllers\AssessmentsController;
use App\Http\Controllers\SchedulesController;
use App\Http\Controllers\AbsencesController;
use App\Http\Controllers\CommunicationsController;
use App\Http\Controllers\CommunicationStudentController;

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::resource('users', UserController::class);

Route::resource('tutors', TutorsController::class);

Route::resource('courses', CoursesController::class);

Route::resource('students', StudentsController::class);

Route::resource('subjects', SubjectsController::class);

Route::resource('roles', RolesController::class);

Route::resource('entrances', EntrancesController::class);

Route::resource('classrooms', ClassroomsController::class);

Route::resource('classes', ClassesController::class);

Route::resource('notices', NoticesController::class);

Route::resource('parents', ParentsController::class);

Route::resource('account-movements', AccountMovementsController::class);

Route::resource('meetings', MeetingsController::class);

Route::resource('marks', MarksController::class);

Route::resource('assessments', AssessmentsController::class);

Route::resource('schedule', SchedulesController::class);

Route::resource('absences', AbsencesController::class);

Route::resource('communications', CommunicationsController::class);

Route::resource('communication-student', CommunicationStudentController::class);
