<?php
namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Product;


class Productissued extends Model
{
    protected $fillable = ['name','bofid','designation'];
    use HasFactory;

    public function products(){
        return $this->belongsToMany(Product::class,'product_productissudes');
    }
}