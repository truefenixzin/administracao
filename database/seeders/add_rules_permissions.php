<?php

namespace Database\Seeders;

use http\Client\Curl\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class add_rules_permissions extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // create permissions

        Permission::create(['name' => 'cadastrar usuario']);
        Permission::create(['name' => 'subir arquivos']);
        Permission::create(['name' => 'listar usuarios']);
        Permission::create(['name' => 'listar comite']);
        Permission::create(['name' => 'cadastrar comite']);
        Permission::create(['name' => 'read']);
        Permission::create(['name' => 'write']);
        Permission::create(['name' => 'edit']);
        Permission::create(['name' => 'delete']);


        // create roles and assign existing permissions

        $role1 = Role::create(['name' => 'Administrador']);
        $role1->givePermissionTo('cadastrar usuario');
        $role1->givePermissionTo('subir arquivos');
        $role1->givePermissionTo('listar usuarios');
        $role1->givePermissionTo('listar comite');
        $role1->givePermissionTo('cadastrar comite');
        $role1->givePermissionTo('read');
        $role1->givePermissionTo('write');
        $role1->givePermissionTo('edit');
        $role1->givePermissionTo('delete');


        $role2 = Role::create(['name' => 'Usuario']);
        $role2->givePermissionTo('cadastrar comite');

        //association admin user
        $email = env('USER_ADMIN');
        $passwd = bcrypt(env('PASSWD_ADMIN'));
        $user = \App\Models\User::factory()->create([
            'name' => 'ADMINISTRADOR',
            'lastname' => 'ADMIN',
            'email' => $email,
            'password' => $passwd,
            'cover' => ''
        ]);
        $user->assignRole($role1);
    }
}
