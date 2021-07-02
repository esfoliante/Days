<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class TutorsSeeder extends Seeder
{
    /**
    * Run the database seeders.
    *
    * @return void
    */
    public function run()
    {
        DB::table('tutors')->insert([
            'name' => 'Papa Aguiar',
            'email' => 'pai@gmail.com',
            'password' => Hash::make('12345678'),
            'contact' => '912345678',
            'student_relationship' => 'Pai',
            'profession' => 'Trolha',
            'cc' => '12345678',
            'NIF' => '123456789',
            'residence' => 'Rua lá do sítio',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'birthday' => '2003-03-02',
        ]);
    }
}
