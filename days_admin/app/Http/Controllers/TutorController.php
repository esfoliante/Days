<?php

namespace App\Http\Controllers;

use App\Models\Tutor;
use Illuminate\Http\Request;

class TutorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('tutors.index');
    }

    /**
     * Display the specified resource.
     *
     * @param Tutor $tutor
     * @return \Illuminate\Http\Response
     */
    public function show(Tutor $tutor)
    {
        return view('tutors.show', compact('tutor'));
    }
}
