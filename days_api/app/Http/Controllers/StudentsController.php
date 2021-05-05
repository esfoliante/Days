<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Http\Requests\CreateStudent;
use App\Http\Resources\StudentCollection;

class StudentsController extends Controller
{
    
    public function index()
    {
        // return new StudentCollection(Student::all());
        return Student::all();
    }

    public function store(CreateStudent $request)
    {
        
        $data = $request->validated();
        $student = Student::create($data);

        return $student;

    }

    public function show($id)
    {
        return Student::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $student = Student::findOrFail($id);
        $student->update($request->all());

        return $student;

    }

    public function destroy($id)
    {
        
        $student = Student::findOrFail($id);
        $student->delete();

    }
}
