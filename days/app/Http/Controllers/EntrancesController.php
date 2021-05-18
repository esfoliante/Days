<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Entrance;
use App\Http\Requests\CreateEntrance;

class EntrancesController extends Controller
{

    public function index()
    {
        return Entrance::all();
    }

    public function store(CreateEntrance $request)
    {
        
        $data = $request->validated();
        $entrance = Entrance::create($data);

        return $entrance;

    }

    public function show($id)
    {
        return Entrance::findOrFail($id);
    }


    public function update(Request $request, $id)
    {
        
        $entrance = Entrance::findOrFail($id);
        $entrance->update($request->all());

        return $entrance;

    }

    public function destroy($id)
    {
        
        $entrance = Entrance::findOrFail($id);
        $entrance->delete();

    }
}
