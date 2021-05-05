<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email');
            $table->string('password');
            $table->foreignId('tutor_id')->constrained();
            $table->foreignId('course_id')->constrained();
            $table->string('limitation')->nullable();
            $table->string('allergies')->nullable();
            $table->string('emergency_contact');
            $table->string('cc');
            $table->string('residence');
            $table->date('birthday');
            $table->boolean('first_login')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
