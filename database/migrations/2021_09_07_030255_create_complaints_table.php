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
            
            $table->string('date',50)->nullable();
            $table->string('time',50)->nullable();
            $table->string('complaintName',50)->nullable();
            $table->string('complaintDesignation',100)->nullable();
            $table->longText('complaintDescription')->nullable();
            $table->string('complaintReceiverName',50)->nullable();
            $table->string('complaintSolverTechnicianName',50)->nullable();
            $table->string('complaintSolutionDate',50)->nullable();
            $table->longText('complaintSolutionDescription')->nullable();
            $table->string('ic')->nullable();
            $table->string('oic')->nullable();
           
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
