<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Web\HomeController;
use App\Http\Controllers\Web\AccountsController;
use App\Http\Controllers\Web\FirstLoginController;
use App\Http\Controllers\Web\RolesController;
use App\Http\Controllers\Web\SubjectsController;
use App\Http\Controllers\Web\ClassesController;
use App\Http\Controllers\Web\SchedulesController;
use App\Http\Controllers\Web\ClassroomsController;
use App\Http\Controllers\Web\CoursesController;
use App\Http\Controllers\Web\EntranceController;
use App\Http\Controllers\Web\CommunicationsController;

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

Route::middleware(['auth'])->group(function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/first-login', [FirstLoginController::class, 'index'])->name('first-login');
    Route::post('/update-password/{id}', [FirstLoginController::class, 'update'])->name('update-password');
    Route::get('/accounts', [AccountsController::class, 'index'])->name('accounts');
    Route::get('/roles', [RolesController::class, 'index'])->name('roles');
    Route::get('/subjects', [SubjectsController::class, 'index'])->name('subjects');
    Route::get('/classes', [ClassesController::class, 'index'])->name('classes');
    Route::get('/schedules', [SchedulesController::class, 'index'])->name('schedules');
    Route::get('/classrooms', [ClassroomsController::class, 'index'])->name('classrooms');
    Route::get('/courses', [CoursesController::class, 'index'])->name('courses');
    Route::get('/entrance', [EntranceController::class, 'index'])->name('entrance');
    Route::get('/communications', [CommunicationsController::class, 'index'])->name('communications');
});

require __DIR__.'/auth.php';
