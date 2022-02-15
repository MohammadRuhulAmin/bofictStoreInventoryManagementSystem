<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotesheetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notesheets', function (Blueprint $table){
            $table->id();
            $table->unsignedBigInteger('booknotesheet_id');
            // $table->longText('notesheet_details');
            $table->date('notesheetDate');
            $table->string('notesheet_no');
            $table->string('reasonForTheNoteSheet');
            $table->string('bookName');
            $table->bigInteger('amount')->default(12);
            $table->foreign('booknotesheet_id')->references('id')->on('booknotesheets')->onDelete('cascade');
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
        Schema::dropIfExists('notesheets');
    }
}
