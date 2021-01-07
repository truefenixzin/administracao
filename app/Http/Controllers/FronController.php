<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slide;


class FronController extends Controller
{
    public function showHome()
    {

        $slides = Slide::all();
        return view('front.index',[
             'slides' => $slides
        ]);

    }
}
