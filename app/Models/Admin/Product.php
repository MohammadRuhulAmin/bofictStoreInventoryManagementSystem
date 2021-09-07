<?php

namespace App\Models\Admin;
use App\Models\Techinician\Complaint;
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
        $this->hasMany(Complaint::class);
    }
}
