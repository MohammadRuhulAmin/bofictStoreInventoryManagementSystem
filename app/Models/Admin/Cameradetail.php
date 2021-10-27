<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cameradetail extends Model
{
    use HasFactory;
    protected $table = "cameradetails";
    protected $fillable = [
        'ictNo',
        'cameraParentLoccation',
        'specificLocationOfCamera',
        'cameraType',
        'defaultIpAddress',
        'usedIpAddress',
        'remarks'
    ];
}
