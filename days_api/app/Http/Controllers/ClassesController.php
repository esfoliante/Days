<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ClassModel;
use App\Http\Requests\CreateClass;

class ClassesController extends Controller
{
    
    public function index()
    {
        return ClassModel::all();
    }

    public function store(CreateClass $request)
    {
        
        $data = $request->validated();
        $class = ClassModel::create($data);

        return $class;

    }

    public function show($id)
    {
        return ClassModel::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $class = ClassModel::findOrFail($id);
        $class->update($request->all());

        return $class;

    }

    public function destroy($id)
    {
        
        $class = ClassModel::findOrFail($id);
        $class->delete();

    }
    
}
