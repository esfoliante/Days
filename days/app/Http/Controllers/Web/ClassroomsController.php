<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ClassroomsController extends Controller
{
    
    public function index() {
        return view('pages/adboard/classrooms');
    }

    public static function checkBackgroundImage($image, $name) {

        if($image == "") return '/classroom-default.jpg';

        return '/' . $image;

    }

    public static function checkName($department, $floor, $classroomNumber) {
        return $department . '' . $floor . '' . $classroomNumber;
    }

}
