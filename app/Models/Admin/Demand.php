<?php

namespace App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Demand extends Model
{
    use HasFactory;
    protected $fillable = [
        'department',
        'demandPerpousDescription',
        'demandDate',
        'issueDate',
        'specification',
        'item',
        'demandQuantity',
        'receiveQuantity',
        'remainingQuantity',
        'Remarks',
        'status'
    ];
}

