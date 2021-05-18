<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Auth\LoginRequest;
use App\Models\User;
use App\Models\Student;
use Illuminate\Http\Response;

class AuthController extends Controller
{
    
    public function loginStudent(LoginRequest $request)
    {
        $data = $request->validated();
        $student = Student::where('email', $data['email'])->first();

        if (!$student || !\Hash::check($data['password'], $student->password)) {
            return response()->json(['error' => __('Wrong email or password')], Response::HTTP_UNAUTHORIZED);
        }

        $token = $student->createToken('API Grant')->accessToken;

        return response()->json(['token' => $token, 'student' => new \App\Http\Resources\Student($student)]);
    }

    public function loginUser(LoginRequest $request)
    {
        $data = $request->validated();
        $user = User::where('email', $data['email'])->first();

        if (!$user || !\Hash::check($data['password'], $user->password)) {
        return response()->json(['error' => __('Wrong email or password')], Response::HTTP_UNAUTHORIZED);
        }

        $token = $user->createToken('API Grant')->accessToken;

        return response()->json(['token' => $token, 'user' => new \App\Http\Resources\User($user)]);
    }

    public function logout(Request $request)
    {

        $token = auth()->user()->token();
        $token->revoke();

        return response('true', 200);

    }

    public function currentUser()
    {
        return new \App\Http\Resources\User(auth()->user());
    }

    public function currentStudent()
    {
        return new \App\Http\Resources\Student(auth()->student());
    }

}
