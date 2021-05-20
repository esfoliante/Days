<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CoursesController extends Controller
{
    
    public function index() {
        return view('pages/adboard/courses');
    }

    public static function checkBackgroundImage($image) {

        if($image == "") return '/course-default.jpg';

        return '/' . $image;

    }

}
