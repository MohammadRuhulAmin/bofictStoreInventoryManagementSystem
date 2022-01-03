<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Erpmodification extends Model
{
    use HasFactory;
    protected $fillable = [
        'problem_id',
        'problemFindingDate',
        'form_link',
        'image',
         'problemDescription',
         'status',
         'problem_dected_by',
         'problemSolutionDate',
         'remarks',
         'suggation',
         'module'
    ];
}

