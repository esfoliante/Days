<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    
    public function index()
    {
        return User::all();
    }

    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|confirmed|min:8',
            'role_id' => 'required|integer',
            'cc' => 'required|string|unique:users',
            'contact' => 'required|string|max:15|unique:users',
        ]);

        User::create($request->all());

    }


    public function show($id)
    {
        return User::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $user = User::findOrFail($id);
        $user->update($request->all());

    }


    public function destroy($id)
    {
        
        $user = User::findOrFail($id);
        $user->delete();

    }
}
