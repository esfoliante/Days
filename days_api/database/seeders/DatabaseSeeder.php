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
            EntranceSeeder::class,
            ClassroomsSeeder::class,
            ClassesSeeder::class,
            NoticesSeeder::class,
            ParentsSeeder::class,
            MeetingsSeeder::class,
            MarksSeeder::class,
            AssessmentsSeeder::class,
            ScheduleSeeder::class,
            AbsencesSeeder::class,
            CommunicationsSeeder::class,
            CommunicationStudentSeeder::class,
            // AccountMovementsSeeder::class,
        ]);
    }
}
