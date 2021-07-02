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
            'name' => 'Filipe Aguiar',
            'email' => 'lipi@gmail.com',
            'password' => Hash::make('12345678'),
            'profile_picture' => '',
            'tutor_id' => 1,
            'course_id' => 1,
            'limitation' => null,
            'allergies' => 'Pólen',
            'emergency_contact' => '912345678',
            'cc' => '12345678',
            'residence' => 'Rua lá do sítio',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'birthday' => '2003-03-02',
            'first_login' => false,
        ]);
    }
}
