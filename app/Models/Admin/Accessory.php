<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Accessory extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'accessoryName',
        'accessoryFirstProperty',
        'accessorySecondProperty',
        'accessoryThirdProperty',
    ];
}
