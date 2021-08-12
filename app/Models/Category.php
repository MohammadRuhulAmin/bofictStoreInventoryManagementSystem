<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Product;

class Category extends Model
{
    use HasFactory;
    protected $appends = ['text'];

    public function getTextAttribute(){
        return $this->name;
    }
    //Relation 
    public function product(){
        return $this->hasMany(Product::class);
    }

}
