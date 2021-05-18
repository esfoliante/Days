<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ParentsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('parents')->insert([
            'name' => Str::random(10),
            'email' => Str::random(10).'@gmail.com',
            'contact' => Str::random(9),
            'student_relationship' => 'Pai',
            'profession' => Str::random(10),
            'cc' => Str::random(8),
            'NIF' => Str::random(9),
            'residence' => Str::random(20),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
