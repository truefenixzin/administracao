<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::all();
        return view('admin.news.ListNews', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.news.AddNews');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!auth()->user()->hasPermissionTo('cadastrar comite')) {
            abort(403);
        }

        $validatedData = $request->validate([
            'name' => 'required|unique:workershighlights',
            'dtini' => 'required',
            'dtfim' => 'required|after_or_equal:dtini',
            'comments' => 'required',

        ]);


        try {
            $user = Auth::user();
            $worker = new workershighlight();
            if (!empty($request->file('cover'))) {
                Storage::delete($worker->cover);
                $worker->cover = '';
            }
            $worker->name = $request->name;
            $worker->dtini = $request->dtini;
            $worker->dtfim = $request->dtfim;
            $worker->cover = $request->cover;
            $worker->comments = $request->comments;

            if (!empty($request->file('cover'))) {
                $worker->cover = $request->file('cover')->store('public/workers');
            }
            $result = $worker->save();

            if ($result) {
                return redirect()->route('admin.workers.create')->withErrors(['success' => 'Cadastro realizado com sucesso']);

            }

        } catch (\Exception $exception) {
            return redirect()->route('admin.workers.create')->withInput()->withErrors(['error' => 'aconteceu um exceção']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        //
    }
}
