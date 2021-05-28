<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountMovement;
use App\Http\Requests\CreateAccountMovement;

class AccountMovementsController extends Controller
{
    public function index()
    {
        return AccountMovement::all();
    }

    public function store(CreateAccountMovement $request)
    {
        $data = $request->validated();
        $movement = AccountMovement::create($data);

        return $movement;
    }

    public function show($id)
    {
        return AccountMovement::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $movement = AccountMovement::findOrFail($id);
        $movement->update($request->all());

        return $movement;
    }

    public function destroy($id)
    {
        $movement = AccountMovement::findOrFail($id);
        $movement->delete();
    }
}
