<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slide;
use Illuminate\Support\Facades\DB;


class FronController extends Controller
{
    public function showHome()
    {

        $slides = DB::table('slides')
            ->whereDate('dtini', '<=', now())
            ->whereDate('dtfim', '>=', now())
            ->get();



        if (!$slides) {
            return view('front.index', [
                'slides' => 'Não tem slide a ser exibido.'
            ]);
        }

        $workers = DB::table('workershighlights')
            ->whereDate('dtini', '<=', now())
            ->whereDate('dtfim', '>=', now())
            ->get();

        if (!$workers) {
            return view('front.index', [
                'workers' => 'Não tem slide a ser exibido.'
            ]);
        }

        return view('front.index', [
            'slides' => $slides,
            'workers' => $workers
        ]);



    }
}
