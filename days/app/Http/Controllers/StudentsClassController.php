<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StudentsClassModel;
use App\Http\Requests\CreateStudentsClass;

class StudentsClassController extends Controller
{
    public function index()
    {
        return StudentsClassModel::all();
    }

    public function store(CreateStudentsClass $request)
    {
        $data = $request->validated();
        $studentClass = StudentsClassModel::create($data);

        return $studentClass;
    }

    public function show(Student $student)
    {
        $studentClass = StudentsClassModel::findOrFail($student);

        return $studentClass;
    }

    public function update(Request $request, $id)
    {
        $studentClass = StudentsClassModel::findOrFail($id);
        $studentClass->update($request->all());

        return $studentClass;
    }

    public function destroy($id)
    {
        $studentClass = StudentsClassModel::findOrFail($id);
        $studentClass->delete();
    }
}
