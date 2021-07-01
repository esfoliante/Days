<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('subjects.index');
    }

    /**
     * Display the specified resource.
     *
     * @param Subject $subject
     * @return \Illuminate\Http\Response
     */
    public function show(Subject $subject)
    {
        return view('subjects.show', compact('subject'));
    }
}
