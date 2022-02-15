<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booknotesheet extends Model
{
    protected $fillable = [
        'bookName','bookNumber','bookOpenDate','bookCloseDate','bookDescription'
    ];
    use HasFactory;
}
