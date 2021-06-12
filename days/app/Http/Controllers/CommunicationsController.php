<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Communication;
use App\Http\Requests\CreateCommunication;

class CommunicationsController extends Controller
{

    public function index()
    {
       return auth()->user()->communications;
    }

    public function store(CreateCommunication $request)
    {

        $data = $request->validated();
        $communication = Communication::create($data);

        $communication->students()->attach($data['students']);

        return $communication;

    }

    public function show($id)
    {
        return Communication::findOrFail($id);
    }

    public function update(Request $request, $id)
    {

        $communication = Communication::findOrFail($id);
        $communication->update($request->all());

        return $communication;

    }

    public function destroy($id)
    {

        $communication = Communication::findOrFail($id);
        $communication->delete();

    }

}
