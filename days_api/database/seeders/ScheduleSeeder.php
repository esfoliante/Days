<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ScheduleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('schedule')->insert([
            'class_id' => 1,
            'classroom_id' => 1,
            'subject_id' => 1,
            'user_id' => 1,
            'starts_at' => date('H:i:s'),
            'ends_at' => date('H:i:s'),
            'day_week' => 'Monday',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
}
