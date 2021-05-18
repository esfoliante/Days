<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class AccountMovementsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('account_movements')->insert([
            'user_id' => null,
            'student_id' => 1,
            'amount' => 10.0,
            'transaction_type' => 'Carregamento',
            'location' => 'Paypal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('account_movements')->insert([
            'user_id' => 1,
            'student_id' => null,
            'amount' => 10.0,
            'transaction_type' => 'Carregamento',
            'location' => 'Paypal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
