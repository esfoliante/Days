<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Assessment;
use App\Http\Requests\CreateAssessment;

class AssessmentsController extends Controller
{
    
    public function index()
    {
        return Assessment::all();
    }

    public function store(CreateAssessment $request)
    {
        
        $data = $request->validated();
        $assessment = Assessment::create($data);

        return $assessment;

    }

    public function show($id)
    {
        
        $assessment = Assessment::findOrFail($id);

        return $assessment;

    }

    public function update(Request $request, $id)
    {
        
        $assessment = Assessment::findOrFail($id);
        $assessment->update($request->all());

        return $assessment;

    }

    public function destroy($id)
    {
        
        $assessment = Assessment::findOrFail($id);
        $assessment->delete();

    }
}
