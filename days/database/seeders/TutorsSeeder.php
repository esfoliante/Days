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
            'name' => Str::random(10),
            'email' => Str::random(10).'@gmail.com',
            'password' => Hash::make('12345678'),
            'contact' => Str::random(9),
            'student_relationship' => 'Pai',
            'profession' => Str::random(10),
            'cc' => Str::random(8),
            'NIF' => Str::random(9),
            'residence' => Str::random(20),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'birthday' => '2003-03-02',
        ]);
    }
}
