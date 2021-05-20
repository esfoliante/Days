<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EntranceController extends Controller
{
    
    public function index() {
        return view('pages/adboard/entrance');
    }

}