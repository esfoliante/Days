<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CommunicationStudents;
use App\Http\Requests\CreateCommunicationStudent;

class CommunicationStudentController extends Controller
{

    public function index()
    {
        return CommunicationStudents::all();
    }

    public function store(CreateCommunicationStudent $request)
    {
        
        $data = $request->validated();
        $communicationstudent = CommunicationStudents::create($data);

        return $communicationstudent;

    }

    public function show($id)
    {
        return CommunicationStudents::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $communicationstudent = CommunicationStudents::findOrFail($id);
        $communicationstudent->update($request->all());

        return $communicationstudent;

    }

    public function destroy($id)
    {
        
        $communicationstudent = CommunicationStudents::findOrFail($id);
        $communicationstudent->delete();

    }

}
