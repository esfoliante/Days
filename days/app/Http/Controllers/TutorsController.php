<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tutor;
use App\Http\Requests\CreateTutor;

class TutorsController extends Controller
{

    public function index()
    {
        return Tutor::all();
    }

    public function store(CreateTutor $request)
    {
        
        $data = $request->validated();

        $tutor = Tutor::create($data);

        return $tutor;

    }

    public function show($id)
    {
        return Tutor::findOrFail($id);
    }
    
    public function update(Request $request, $id)
    {
        
        $tutor = Tutor::findOrFail($id);
        $tutor->update($request->all());

        return $tutor;

    }

    public function destroy($id)
    {
        
        $tutor = Tutor::findOrFail($id);
        $tutor->delete();

    }
}
