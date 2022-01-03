<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateErpmodificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('erpmodifications', function (Blueprint $table) {
            $table->id();
            $table->string("problem_id")->nullable();
            $table->date("problemFindingDate");
            $table->date('problemSolutionDate')->nullable();
            $table->string("form_link",400);
            $table->string("image",500)->nullable();
            $table->longText("problemDescription");
            $table->string("status");
            $table->string("problem_detected_by");
            $table->string("remarks",100)->nullable();
            $table->longText("suggation")->nullable();
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
        Schema::dropIfExists('erpmodifications');
    }
}
