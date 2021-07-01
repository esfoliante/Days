<?php

namespace App\Http\Controllers;

use App\Models\ParentModel;
use Illuminate\Http\Request;

class ParentModelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('parentmodels.index');
    }

    /**
     * Display the specified resource.
     *
     * @param ParentModel $parentmodel
     * @return \Illuminate\Http\Response
     */
    public function show(ParentModel $parentmodel)
    {
        return view('parentmodels.show', compact('parentmodel'));
    }
}
