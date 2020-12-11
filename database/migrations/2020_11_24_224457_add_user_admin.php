<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserAdmin extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $email = env('USER_ADMIN');
        $passwd = bcrypt(env('PASSWD_ADMIN'));
        DB::table('users')->insert([
            'name'  => 'ADMINISTRADOR',
            'lastname' => 'ADMIN',
            'email' => $email,
            'password' => $passwd
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $email = env('USER_ADMIN');
        DB::delete('DELETE FROM users WHERE  email = ?',[$email]);
    }
}
