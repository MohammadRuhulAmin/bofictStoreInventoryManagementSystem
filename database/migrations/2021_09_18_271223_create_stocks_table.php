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
            $table->string('accessoryName',100)->nullable();
            $table->string('accessoryFirstProperty',100)->nullable();
            $table->string('accessorySecondProperty',100)->nullable();
            $table->string('accessoryThirdProperty',100)->nullable();
            $table->date('date')->nullable();
            $table->bigInteger('inclusion')->nullable();
            $table->bigInteger('exclusion')->nullable();
            $table->bigInteger('stockBalance')->nullable();
            $table->string('maintanance',100)->nullable();
            $table->bigInteger('issueNo')->nullable();
            $table->string('issuedTo',200)->nullable();
            $table->string('branch',200)->nullable();
            $table->string('remarks',200)->nullable();
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
