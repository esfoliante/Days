<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Http\Requests\CreateClassroom;

class ClassroomsController extends Controller
{
    
    public function index()
    {
        return Classroom::all();
    }

    public function store(CreateClassroom $request)
    {
        
        $data = $request->validated();
        $classroom = Classroom::create($data);

        return $classroom;

    }

    public function show($id)
    {
        return Classroom::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
    
        $classroom = Classroom::findOrFail($id);
        $classroom->update($request->all());

        return $classroom;

    }

    public function destroy($id)
    {
        
        $class = Classroom::findOrFail($id);
        $class->delete();

    }
}
