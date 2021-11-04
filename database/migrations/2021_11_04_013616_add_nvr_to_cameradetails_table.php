<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddNvrToCameradetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('cameradetails', function (Blueprint $table) {
            $table->string('nvr',200)->nullable();
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     * 
     */
    public function down()
    {
        Schema::table('cameradetails', function (Blueprint $table){
            $table->dropColum('nvr');
        });
    }
}
