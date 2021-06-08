<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('classes', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->foreignId('course_id')->constrained();
            $table->integer('year');
            $table->foreignId('user_id')->constrained();
            $table->foreignId('student_id')->constrained();
            $table->timestamps();
        });

        Schema::table('students', function (Blueprint $table) {
            $table
                ->foreignId('class_id')
                ->nullable()
                ->constrained();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('classes');
    }
}
