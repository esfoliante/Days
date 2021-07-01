<?php

namespace App\Http\Controllers;

use App\Models\Communicatio;
use Illuminate\Http\Request;

class CommunicatioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('communicatios.index');
    }

    /**
     * Display the specified resource.
     *
     * @param Communicatio $communicatio
     * @return \Illuminate\Http\Response
     */
    public function show(Communicatio $communicatio)
    {
        return view('communicatios.show', compact('communicatio'));
    }
}
