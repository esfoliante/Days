<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Food;
use App\Http\Requests\CreateFood;

class FoodController extends Controller
{
    public function index()
    {
        return Food::all();
    }

    public function store(CreateFood $request)
    {
        $data = $request->validated();
        $food = Food::create($data);

        return $food;
    }

    public function show($id)
    {
        return Food::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $food = Food::findOrFail($id);
        $food->update($request->all());

        return $food;
    }

    public function destroy($id)
    {
        $food = Food::findOrFail($id);
        $food->delete();
    }
}
