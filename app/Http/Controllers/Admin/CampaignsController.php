<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Campaigns;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class CampaignsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = Campaigns::all();
        return view('admin.campaigns.Listcampaigns', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.campaigns.AddCampaigns');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!auth()->user()->hasPermissionTo('subir arquivos')) {
            abort(403);
        }

        $validatedData = $request->validate([
            'title' => 'required',
            'dtini' => 'required',
            'dtfim' => 'required|after_or_equal:dtini',
            'category' => 'required',
            'cover' => 'required',

        ]);

        try {
            $user = Auth::user();
            $campaign = new Campaigns();
            if (!empty($request->file('cover'))) {
                Storage::delete($campaign->cover);
                $campaign->cover = '';
            }
            $campaign->title = $request->title;
            $campaign->dtini = $request->dtini;
            $campaign->dtfim = $request->dtfim;
            $campaign->cover = $request->cover;
            $campaign->description = $request->comments;
            $campaign->category = $request->category;

            if (!empty($request->file('cover'))) {
                $campaign->cover = $request->file('cover')->store('public/news');
            }
            $result = $campaign->save();

            if ($result) {
                return redirect()->route('admin.campaigns.create')->withErrors(['success' => 'Cadastro realizado com sucesso']);

            }

        } catch (\Exception $exception) {
            return redirect()->route('admin.campaigns.create')->withInput()->withErrors(['error' => 'aconteceu um exceção']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Campaigns $campaigns
     * @return \Illuminate\Http\Response
     */
    public function show(Campaigns $campaigns)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Campaigns $campaigns
     * @return \Illuminate\Http\Response
     */
    public function edit(Campaigns $campaigns)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Campaigns $campaigns
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Campaigns $campaigns)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Campaigns $campaigns
     * @return \Illuminate\Http\Response
     */
    public function destroy(Campaigns $campaigns)
    {
        //
    }
}
