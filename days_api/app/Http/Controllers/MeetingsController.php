<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Meeting;
use App\Http\Requests\CreateMeeting;

class MeetingsController extends Controller
{
   
    public function index()
    {
        return Meeting::all();
    }

    public function store(CreateMeeting $request)
    {
        
        $data = $request->validated();
        $meeting = Meeting::create($data);

        return $meeting;

    }

    public function show($id)
    {
        return Meeting::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $meeting = Meeting::findOrFail($id);
        $meeting->update($request->all());

        return $meeting;

    }

    public function destroy($id)
    {
        
        $meeting = Meeting::findOrFail($id);
        $meeting->delete();

    }
}
