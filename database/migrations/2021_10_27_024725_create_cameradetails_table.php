<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCameradetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cameradetails', function (Blueprint $table) {
            $table->id();
            $table->string('ictNo',100);
            $table->string('cameraParentLoccation',100);
            $table->string('specificLocationOfCamera',100);
            $table->string('cameraType',100);
            $table->string('defaultIpAddress',100);
            $table->string('usedIpAddress',100);
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
        Schema::dropIfExists('cameradetails');
    }
}
