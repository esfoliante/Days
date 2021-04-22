<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Meal;
use App\Http\Requests\CreateMeal;

class MealsController extends Controller
{

    public function index()
    {
        return Meal::all();
    }

    public function store(CreateMeal $request)
    {
        
        $data = $request->validated();
        $meal = Meal::create($data);

        return $meal;

    }

    public function show($id)
    {
        return Meal::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $meal = Meal::findOrFail($id);
        $meal->update($request->all());

        return $meal;

    }

    public function destroy($id)
    {
        
        $meal = Meal::findOrFail($id);
        $meal->delete();

    }

}
