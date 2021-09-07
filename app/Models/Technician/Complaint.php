<?php

namespace App\Models\Technician;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Product;
class Complaint extends Model
{
    use HasFactory;
     protected $table="complaints";
    public function products(){
        return $this->belongsTo(Product::class);
    }
}
