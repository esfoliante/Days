<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Absence;
use App\Models\Student;
use App\Http\Requests\CreateAbsence;

class AbsencesController extends Controller
{
    public function index()
    {
        return Absence::all();
    }

    public function indexByStudent(Student $student)
    {
        return new \App\Http\Resources\AbsenceCollection($student->absences);
    }

    public function store(CreateAbsence $request)
    {
        $data = $request->validated();
        $absence = Absence::create($data);

        return $absence;
    }

    public function show(Absence $absence)
    {
        return $absence;
    }

    public function update(Request $request, $id)
    {
        $absence = Absence::findOrFail($id);
        $absence->update($request->all());

        return $absence;
    }

    public function destroy($id)
    {
        $absence = Absence::findOrFail($id);
        $absence->delete();
    }
}
