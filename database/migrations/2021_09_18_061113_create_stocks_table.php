<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stocks', function (Blueprint $table) {
            $table->id();
            $table->string('item',50);
            $table->string('details',100)->nullable();
            $table->date('date');
            $table->bigInteger('inclusion');
            $table->bigInteger('exclusion');
            $table->string('maintanance',100)->nullable();
            $table->bigInteger('storeBalance');
            $table->bigInteger('issueNo')->nullable();
            $table->string('issuedTo',200);
            $table->string('branch',200);
            $table->string('remarks')->nullable();
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
        Schema::dropIfExists('stocks');
    }
}
