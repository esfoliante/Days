<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\CreateUser;

class UserController extends Controller
{
    
    public function index()
    {
        return User::all();
    }

    public function store(CreateUser $request)
    {

        $data = $request->validated();

        $user = User::create($data);

        return $user;

    }


    public function show($id)
    {
        return User::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $user = User::findOrFail($id);
        $user->update($request->all());

        return $user;

    }


    public function destroy($id)
    {
        
        $user = User::findOrFail($id);
        $user->delete();

    }
}
