<?php

namespace App\Models\Admin;
use App\Models\Technician\Complaint;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use Illuminate\Support\Facades\DB;
class Product extends Model
{
    use HasFactory;
    
    protected $fillable = ['name','category','subcategory','type','item','description','department'];
    public static function getProductList(){
        $products = Product::get()->toArray();
        return $products;
    }

    public function complaints(){
       return $this->hasMany(Complaint::class);
    }
}
