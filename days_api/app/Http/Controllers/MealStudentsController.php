<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MealStudents;
use App\Http\Requests\CreateMealStudents;


class MealStudentsController extends Controller
{
   
    public function index()
    {
        return MealStudents::all();
    }

    public function store(CreateMealStudents $request)
    {
        
        $data = $request->validated();
        $meals_students = MealStudents::create($data);

        return $meals_students;

    }

    public function show($id)
    {
        return MealStudents::findOrFail($id);
    }
    
    public function update(Request $request, $id)
    {
        
        $meals_students = MealStudents::findOrFail($id);
        $meals_students->update($request->all());

        return $meals_students;

    }

    public function destroy($id)
    {
        
        $meal_students = MealStudents::findOrFail($id);
        $meal_students->delete();

    }

}
