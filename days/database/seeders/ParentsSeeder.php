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
            'name' => 'Mamã Aguiar',
            'email' => 'mae@gmail.com',
            'contact' => '123456789',
            'student_relationship' => 'Mãe',
            'profession' => 'Vendedora',
            'cc' => '12345678',
            'NIF' => '123456789',
            'residence' => 'Rua lá do sítio',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
