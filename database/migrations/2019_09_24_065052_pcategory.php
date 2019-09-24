<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Pcategory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pcategories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('title2');
            $table->string('slug');
            $table->text('description')->nullable();
            $table->text('description2')->nullable();
            $table->string('image')->nullable();
            $table->string('image_inside')->nullable();
            $table->integer('active')->default(1);
            $table->string('lang')->nullable()->default('ru');
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
        Schema::dropIfExists('pcategories');
    }
}
