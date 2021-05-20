<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Web\UpdatePassword;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;

class FirstLoginController extends Controller
{
    
    public function index() {
        return view('first-login');
    }

    public function update(UpdatePassword $request, $id) {
        
        $user = User::findOrFail($id);

        // ? We're going to update our password by hand since we wanna encrypt it
        $request->merge([
            'password' => Hash::make($request->password), 
        ]);
        $user->first_login = 1;

        $user->update($request->all());

        return redirect()->intended(RouteServiceProvider::HOME);

    }

}
