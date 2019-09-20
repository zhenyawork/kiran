<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->nullable();
            $table->string('slug')->nullable();
            $table->string('art')->nullable();
            $table->text('description')->nullable();
            $table->integer('price')->nullable();
            $table->string('photo')->nullable();
            $table->text('photos')->nullable();
            $table->integer('stock')->nullable();
            $table->integer('active')->nullable();
            $table->float('stars')->nullable();
            $table->integer('category_id')->nullable();
            
            $table->string('manufacture')->nullable();
            $table->string('country')->nullable();
            $table->string('vid_compresora')->nullable();
            $table->string('tip_compresora')->nullable();
            $table->string('tip_privoda')->nullable();
            $table->string('proizvoditelnost')->nullable();
            $table->string('davlenie')->nullable();
            $table->string('moshnost_dvigatela')->nullable();
            $table->string('napravlenie')->nullable();
            $table->string('uroven_shuma')->nullable();
            $table->string('massa')->nullable();
            $table->string('dlinna')->nullable();
            $table->string('shirina')->nullable();
            $table->string('visota')->nullable();
            $table->string('garantia')->nullable();
            $table->integer('prosmotry')->nullable();


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
        Schema::dropIfExists('products');
    }
}
