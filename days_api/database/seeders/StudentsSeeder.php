<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class StudentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('students')->insert([
            'internal_number' => 1,
            'name' => Str::random(10),
            'email' => Str::random(10).'@gmail.com',
            'password' => Hash::make('12345678'),
            'tutor_id' => 1,
            'course_id' => 1,
            'limitation' => Str::random(10),
            'allergies' => Str::random(10),
            'emergency_contact' => Str::random(9),
            'cc' => Str::random(8),
            'residence' => Str::random(15),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'birthday' => '2003-03-02',
            'first_login' => false,
        ]);
    }
}
