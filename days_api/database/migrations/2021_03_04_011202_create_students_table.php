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
            $table->integer('tutor_id')->unsigned();
            $table->integer('parent_id')->unsigned();
            $table->integer('class_id')->unsigned();
            $table->string('limitation')->nullable();
            $table->string('allergies')->nullable();
            $table->timestamps();
            $table->string('emergency_contact');
            $table->string('cc');
            $table->string('residence');
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
