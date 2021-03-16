<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            RolesSeeder::class,
            UsersSeeder::class,
            TutorsSeeder::class,
            CourseSeeder::class,
            StudentsSeeder::class,
            SubjectsSeeder::class,
        ]);
    }
}
