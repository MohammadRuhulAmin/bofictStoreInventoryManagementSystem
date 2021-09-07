<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComplaintsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('complaints', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('product_id');
            $table->string('date',50);
            $table->string('time',50);
            $table->string('complaintName',50);
            $table->string('complaintDesignation',100);
            $table->longText('complaintDescription');
            $table->string('complaintReceiverName',50);
            $table->string('complaintSolverTechnicianName',50);
            $table->string('complaintSolutionDate',50);
            $table->longText('complaintSolutionDescription');
            $table->string('ic')->nullable();
            $table->string('oic')->nullable();
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
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
        Schema::dropIfExists('complaints');
    }
}
