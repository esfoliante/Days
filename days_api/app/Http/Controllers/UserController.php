<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\CreateUser;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use App\Notifications\CreateAccountNotification;
use Illuminate\Support\Facades\Notification;

class UserController extends Controller
{
    
    public function index()
    {
        return User::all();
    }

    public function store(CreateUser $request)
    {
    
        $generatedPassword = $this->generatePassword();

        $data = $request->validated();
        $data['password'] = Hash::make($generatedPassword);

        $user = User::create($data);
        Notification::send($user, new CreateAccountNotification($data['name'], $data['email'], $generatedPassword));

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

    /**
     * 
     *  This little function will be used to generate our student's system password
     *  that he can use on his / her first login
     * 
     */
    private function generatePassword()
    {

        // We're going to generate a 15 characters password
        // in order to be secure and as random as possible
        $password = Str::random(15);

        return $password;

    }

}
