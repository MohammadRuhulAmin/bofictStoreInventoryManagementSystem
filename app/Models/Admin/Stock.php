<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

// $table->string('item',50);
// $table->string('details',100)->nullable();
// $table->date('date');
// $table->bigInteger('inclusion');
// $table->bigInteger('exclusion');
// $table->string('maintanance',100)->nullable();
// $table->bigInteger('storeBalance');
// $table->bigInteger('issueNo')->nullable();
// $table->string('issuedTo',200);
// $table->string('branch',200);
// $table->string('remarks')->nullable();

class Stock extends Model
{
    use HasFactory;
    protected $fillable = [
        'item',
        'details',
        'date',
        'inclusion',
        'exclusion',
        'maintanance',
        'storeBalance',
        'issueNo',
        'issuedTo',
        'branch',
        'remarks'
    ];
    
}
