<?php

namespace App\Http\Controllers;

use http\QueryString;
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
                'workers' => 'Não tem destaques a ser exibido.'
            ]);
        }

        $news = DB::table('news')
            ->whereDate('dtini', '<=', now())
            ->whereDate('dtfim', '>=', now())
            ->get();

        if (!$news) {
            return view('front.index', [
                'workers' => 'Não tem noticias a ser exibida.'
            ]);
        }

        return view('front.index', [
            'slides' => $slides,
            'workers' => $workers,
            'news' => $news
        ]);
    }

    public function showPayBox()
    {

        $payboxes = DB::select('SELECT * FROM payboxes ORDER BY created_at DESC LIMIT 8');

        return view('front.pay_box', compact('payboxes'));

    }
}
