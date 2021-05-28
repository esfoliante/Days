<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Http\Requests\CreateStudent;
use App\Http\Resources\StudentCollection;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use App\Notifications\CreateAccountNotification;
use Illuminate\Support\Facades\Notification;

class StudentsController extends Controller
{
    public function index()
    {
        // return new StudentCollection(Student::all());
        return Student::all();
    }

    public function store(CreateStudent $request)
    {
        $generatedPassword = $this->generatePassword();

        $data = $request->validated();
        $data['password'] = Hash::make($generatedPassword);

        // Register our pretty little user and dispatch the message
        $student = Student::create($data);
        Notification::send(
            $student,
            new CreateAccountNotification(
                $data['name'],
                $data['email'],
                $generatedPassword
            )
        );

        return $student;
    }

    public function show(Student $student)
    {
        return new \App\Http\Resources\Student($student);
    }

    public function update(Request $request, Student $student)
    {
        $student->update($request->all());

        return $student;
    }

    public function destroy($id)
    {
        $student = Student::findOrFail($id);
        $student->delete();
    }

    /**
     *
     *  This little function will be used to generate our student's system password
     *  that he can use on his / her first login
     *
     */
    private function generatePassword()
    {
        // We're going to generate a 15 characters password
        // in order to be secure and as random as possible
        $password = Str::random(15);

        return $password;
    }

    public function indexEntrances(Student $student)
    {
        return $student->entrances;
    }

    public function indexTotal(Student $student)
    {
        return $student->movements_sum;
    }

    public function accountMovements(Student $student)
    {
        return $student->accountMovements;
    }
}
