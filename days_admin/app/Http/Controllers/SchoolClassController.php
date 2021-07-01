<?php

namespace App\Http\Controllers;

use App\Models\SchoolClass;
use Illuminate\Http\Request;

class SchoolClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('schoolclasses.index');
    }

    /**
     * Display the specified resource.
     *
     * @param SchoolClass $schoolclass
     * @return \Illuminate\Http\Response
     */
    public function show(SchoolClass $schoolclass)
    {
        return view('schoolclasses.show', compact('schoolclass'));
    }
}
