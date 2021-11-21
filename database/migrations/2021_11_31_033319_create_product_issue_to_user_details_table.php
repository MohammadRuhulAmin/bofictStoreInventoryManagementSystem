<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductIssueToUserDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //  // issueDate ,  returnDate ,  shortDescription , ProductId !   'BofUserId'=>'required',
         //   'ProductId'=>'required',
    public function up()
    {
        
        Schema::create('product_issue_to_user_details', function (Blueprint $table) {
            $table->id();
            $table->string("BofUserId",50);
            $table->string("ProductId",50);
            $table->string("issueDate",50);
            $table->string("returnDate",50)->nullable();
            $table->string("shortDescription",200)->nullable();
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

        Schema::dropIfExists('product_issue_to_user_details');
    }
}
