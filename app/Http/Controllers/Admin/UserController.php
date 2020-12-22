<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return view('admin.users.listarusers', [
            'users' => $users
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::orderBy('name')->get();
        return view('admin.users.cadastro', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

//        dd($request->all());
        $user = new User();
        $user->name = $request->nome;
        $user->lastname = $request->sobrenome;
        $user->email = $request->email;
        $user->password = bcrypt($request->senha);
        $result = $user->save();

        if (!empty($request->roles)) {
//            dd($request->all());
//            foreach ($request->roles as $role){
            $userRoles[] = Role::whereId($request->roles)->first();

//            }
        }
        if (isset($userRoles) && !empty($userRoles)) {
            $user->assignRole($userRoles);
        } else {
            echo "algo deu errado e está vazio";
        }

        if ($result) {
            return redirect()->route('admin.users.create');
        }

        Echo "algo deu errado";

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::where('id', $id)->first();
        return view('admin.users.editar', [
            'user' => $user
        ]);
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
        $user = User::where('id', $id)->first();


        if (!empty($request->file('cover'))) {
            Storage::delete($user->cover);
            $user->cover = '';
        }

        $user->name = $request->nome;
        $user->lastname = $request->sobrenome;


        if (!empty($request->file('cover'))) {
            $user->cover = $request->file('cover')->store('user');
        }
        $user->save();
        var_dump($user);

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
