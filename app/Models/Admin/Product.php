<?php

namespace App\Models\Admin;
use App\Models\Technician\Complaint;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Productissued;
// use Illuminate\Support\Facades\DB; 
use Illuminate\Support\Facades\Session;
class Product extends Model
{
    use HasFactory;   
    protected $fillable = ['name','category','subcategory','type','item','description','department'];
    public static function getProductList(){
        $products = Product::get()->toArray();
        //$products=Product::where('category','Desktop')->get()->toArray();
        return $products;
    }
    public static function getProductListByCategory(){
        $categoryName = Session::get('categoryName');
        
        $products = Product::where('category',$categoryName)->get()->toArray();
        return $products; 
    }
    public static function getProductListByCategorySubcategory(){
        $categoryName = Session::get('categoryName');
        $subCategoryName = Session::get('subCategoryName');
        // return $categoryName ." ". $subCategoryName;
        $products = Product::where(['category'=>$categoryName ,'subCategoryName' =>$subCategoryName])->get()->toArray();
        return $products;
    }
    public function complaints(){
       return $this->hasMany(Complaint::class);
    }
    public function productissueds(){
        return $this->belongsToMany(Productissued::class,'product_productissudes');
    }
    
}
