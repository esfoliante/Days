<?php

namespace App\Http\Controllers;

use App\Models\AccMovement;
use Illuminate\Http\Request;

class AccMovementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('accmovements.index');
    }

    /**
     * Display the specified resource.
     *
     * @param AccMovement $accmovement
     * @return \Illuminate\Http\Response
     */
    public function show(AccMovement $accmovement)
    {
        return view('accmovements.show', compact('accmovement'));
    }
}
