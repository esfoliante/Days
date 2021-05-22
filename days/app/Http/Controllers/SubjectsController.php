<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;
use App\Http\Requests\CreateSubject;

class SubjectsController extends Controller
{
    public static function index()
    {
        return Subject::all();
    }

    public function store(CreateSubject $request)
    {
        $data = $request->validated();
        $subject = Subject::create($data);

        return $subject;
    }

    public function show($id)
    {
        return Subject::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $subject = Subject::findOrFail($id);
        $subject->update($request->all());

        return $subject;
    }

    public function destroy($id)
    {
        $subject = Subject::findOrFail($id);
        $subject->delete();
    }
}
