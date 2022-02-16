<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotesheetdetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notesheetdetails', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('notesheet_id');
            $table->string("PVRV");
            $table->date("date");
            $table->longText("details");
            $table->bigInteger('credit')->default(12);
            $table->bigInteger('debit')->default(12);
            $table->bigInteger('cashbalance')->nullable()->default(12);
            $table->string("ic")->nullable();
            $table->string("oic")->nullable();
            $table->string("erp_indent_voucher_no")->nullable();
            $table->date("erp_entry_date")->nullable();
            $table->string("comments")->nullable();
            //$table->string("bookName")->nullable();
            $table->foreign('notesheet_id')->references('id')->on('notesheets')->onDelete('cascade');
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
        Schema::dropIfExists('notesheetdetails');
    }
}
