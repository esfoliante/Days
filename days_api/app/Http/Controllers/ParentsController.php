<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ParentModel;
use App\Http\Requests\CreateParent;

class ParentsController extends Controller
{
   
    public function index()
    {
        return ParentModel::all();
    }

    public function store(CreateParent $request)
    {
        
        $data = $request->validated();
        $parent = ParentModel::create($data);

        return $parent;

    }

    public function show($id)
    {
        return ParentModel::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $parent = ParentModel::findOrFail($id);
        $parent->update($request->all());

        return $parent;

    }

    public function destroy($id)
    {
        
        $parent = ParentModel::findOrFail($id);
        $parent->delete();

    }

}
