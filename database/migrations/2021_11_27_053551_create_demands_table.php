<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDemandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('demands', function (Blueprint $table) {
            $table->id();
            $table->string('department',50);
            $table->string('demandPerpousDescription',500);
            $table->date('demandDate');
            $table->date('issueDate');
            $table->string('specification',100)->nullable();
            $table->string('item',100);
            $table->string('demandQuantity');
            $table->string('receiveQuantity')->nullable();
            $table->string('remainingQuantity')->nullable();
            $table->string('Remarks',500)->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('demands');
    }
}
