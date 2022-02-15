<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->id();
            $table->string('name',50);
            $table->string('category',50)->nullable();
            $table->string('subcategory',50)->nullable();
            $table->string('type',50)->nullable();
            $table->string('item',50)->nullable();
            $table->string('brand',50)->nullable();
            $table->string('image',300)->nullable();
            $table->string('description',300)->nullable();
            $table->string('department',50)->nullable();
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
