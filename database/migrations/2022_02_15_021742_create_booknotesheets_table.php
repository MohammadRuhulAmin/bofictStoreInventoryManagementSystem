<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooknotesheetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booknotesheets', function (Blueprint $table) {
            $table->id();
            $table->string('bookName');
            $table->string('bookNumber');
            $table->date('bookOpenDate');
            $table->date('bookCloseDate');
            $table->string('bookDescription',200);
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
        Schema::dropIfExists('booknotesheets');
    }
}
