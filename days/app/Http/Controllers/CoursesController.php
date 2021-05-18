<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;
use App\Http\Requests\CreateCourses;

class CoursesController extends Controller
{

    public function index()
    {
        return Course::all();
    }

    public function store(CreateCourses $request)
    {
        
        $data = $request->validated();

        $course = Course::create($data);

        return $course;

    }

    public function show($id)
    {
        return Course::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $course = Course::findOrFail($id);
        $course->update($request->all());

        return $course;

    }

    public function destroy($id)
    {
        
        $course = Course::findOrFail($id);
        $course->delete();

    }
}
