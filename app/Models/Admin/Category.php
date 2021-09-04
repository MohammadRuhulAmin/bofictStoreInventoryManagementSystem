<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Product;

class Category extends Model
{
    use HasFactory;
    protected $appends = ['text'];

    public function getTextAttribute(){
        return $this->name;
    }
 
  

}
