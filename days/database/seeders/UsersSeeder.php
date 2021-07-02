<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UsersSeeder extends Seeder
{
    /**
    * Run the database seeders.
    *
    * @return void
    */
    public function run()
    {
        DB::table('users')->insert([
            'internal_number' => 1,
            'name' => 'Administrador',
            'email' => 'admin@admin.com',
            'password' => Hash::make('abc12345'),
            'profile_picture' => '',
            'role_id' => 1,
            'cc' => '12345678',
            'contact' => '912345678',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'birthday' => '2003-03-02',
        ]);
    }
}
