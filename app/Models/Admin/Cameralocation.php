<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cameralocation extends Model
{
    use HasFactory;
    protected $fillable = [
        'locationName',
        'locationDetails',
        'totalCamera'
    ];
    
}
