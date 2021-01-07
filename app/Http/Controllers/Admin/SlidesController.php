<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class SlidesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.slides.slideUpload');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'title' => 'required|min:3|max:191',
            'dtini' => 'required|min:3|max:191',
            'dtfim' => 'required|min:3|max:191',
            'message' => 'required|min:3|max:191',
            'cover' => 'required|mimes:jpg,jpeg,png',

        ];

        $validate = Validator::make($request->all(), $rules);

        if ($validate->fails()) {
            return redirect(route('admin.posts.create'))
                ->withErrors($validate)
                ->withInput();
        } else {

            $user = Auth::user();
            $slide = New Slide();
            if (!empty($request->file('cover'))) {
                Storage::delete($slide->cover);
                $slide->cover = '';
            }
            $slide->title = $request->title;
            $slide->dtini = $request->dtini;
            $slide->dtfim = $request->dtfim;
            // $slide->cover = $request->cover;
            $slide->message = $request->message;
            $slide->author = $user->id;

            if (!empty($request->file('cover'))) {
                $slide->cover = $request->file('cover')->store('public/slides');
            }
            $result = $slide->save();

            if ($result) {
                return redirect()->route('admin.slides.create')->withInput()->withErrors(['success' => 'Cadastro realizado com sucesso']);

            }
            return redirect()->route('admin.slides.create')->withInput()->withErrors();
        }

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
