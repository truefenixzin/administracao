<?php

namespace App\Http\Controllers;

use http\QueryString;
use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\News;
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
            ->orderByDesc('meta')
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

        $payboxes = DB::select('SELECT * FROM payboxes ORDER BY created_at DESC LIMIT 9');

        return view('front.pay_box', compact('payboxes'));

    }

    public function shownew($id)
    {

        $new = News::where('id', $id)->first();
        return view('front.news_details', compact('new'));
    }

    public function showCampaigns()
    {

        $commission = DB::table('commissions')
            ->orderByDesc('created_at')
            ->limit(1)
            ->get();

        $campaigns = DB::table('campaigns')
            ->whereDate('dtini', '<=', now())
            ->whereDate('dtfim', '>=', now())
            ->orderByDesc('created_at')
            ->get();
        return view('front.campaigns', compact('commission', 'campaigns'));
    }


}
