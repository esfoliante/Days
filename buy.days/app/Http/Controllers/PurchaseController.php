<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\PurchaseProduct;
use Illuminate\Support\Facades\Mail;

class PurchaseController extends Controller
{

    public function create()
    {
        return view('welcome');
    }

    public function store(Request $request)
    {
        Mail::to('miguel.ferreira.20036@gmail.com')->send(new PurchaseProduct());

        return view('welcome');
    }
    
}
