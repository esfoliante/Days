<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AccountsController extends Controller
{
    
    public function index() {
        return view('pages/adboard/accounts');
    }

}
