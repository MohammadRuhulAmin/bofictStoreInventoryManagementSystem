<?php

namespace App\Models;

use App\Models\Size;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Product;
class ProductStock extends Model
{
    use HasFactory;
    public const STOCK_IN = 'in';
    public const STOCK_OUT = 'out';

    //Relation 

    public function product(){
        return $this->belongsTo(Product::class);
    }
    public function size(){
        return $this->belongsTo(Size::class);
    }




}