<?php
namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Productissued extends Model
{
    protected $fillable = ['name','bofid','designation'];
    use HasFactory;
}