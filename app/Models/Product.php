<?php

namespace App\Models;
use App\Models\Category;
use App\Models\Brand;
use App\Models\ProductSizeStock;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    public const STATUS_ACTIVE = 1;
    public const STATUS_INACTIVE = 0;

    //Relations

    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function brand(){
        return $this->belongsTo(Brand::class);
    }
    public function product_stocks(){
        return $this->hasMany(ProductSizeStock::class);
    }

}
