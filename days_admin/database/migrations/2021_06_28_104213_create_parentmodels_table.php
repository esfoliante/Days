<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParentModelsTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parentmodels', function (Blueprint $table) {
            $table->id();
            $table->string('name');
			$table->string('email');
			$table->string('contact');
			$table->string('profession');
			$table->string('cc');
			$table->string('nif');
			$table->string('residence');
			

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
    Schema::dropIfExists('parentmodels');
    }
}
