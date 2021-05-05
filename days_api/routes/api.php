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

//Route::middleware('auth:api')->group( function () {
    Route::resources([
        'users' => UserController::class,
        'tutors' => TutorsController::class,
        'courses' => CoursesController::class,
        'students' => StudentsController::class,
        'subjects' => SubjectsController::class,
        'roles' => RolesController::class,
        'entrances' => EntrancesController::class,
        'classrooms' => ClassroomsController::class,
        'classes' => ClassesController::class,
        'notices' => NoticesController::class,
        'parents' => ParentsController::class,
        'account-movements' => AccountMovementsController::class,
        'meetings' => MeetingsController::class,
        'marks' => MarksController::class,
        'assessments' => AssessmentsController::class,
        'schedule' => SchedulesController::class,
        'absences' => AbsencesController::class,
        'communications' => CommunicationsController::class,
        'communication-student' => CommunicationStudentController::class,
    ]);
//});
