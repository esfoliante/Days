<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Schedule;
use App\Http\Requests\CreateSchedule;

class SchedulesController extends Controller
{
    
    public function index()
    {
        return Schedule::all();
    }

    public function store(CreateSchedule $request)
    {
        
        $data = $request->validated();
        $schedule = Schedule::create($data);

        return $schedule;

    }

    public function show($id)
    {
        
        $schedule = Schedule::findOrFail($id);

        return $schedule;

    }

    public function update(Request $request, $id)
    {
        
        $schedule = Schedule::findOrFail($id);
        $schedule->update($request->all());

        return $schedule;

    }

    public function destroy($id)
    {
        
        $schedule = Schedule::findOrFail($id);
        $schedule->delete();

    }
}
