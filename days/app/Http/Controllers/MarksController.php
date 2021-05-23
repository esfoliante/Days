<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mark;
use App\Http\Requests\CreateMark;

class MarksController extends Controller
{
    public function index()
    {
        return Mark::all();
    }

    public function store(CreateMark $request)
    {
        $data = $request->validated();
        $mark = Mark::create($data);

        return $mark;
    }

    public function show($id)
    {
        return Mark::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $mark = Mark::findOrFail($id);
        $mark->update($request->all());

        return $mark;
    }

    public function destroy($id)
    {
        $mark = Mark::findOrFail($id);
        $mark->delete();
    }
}
