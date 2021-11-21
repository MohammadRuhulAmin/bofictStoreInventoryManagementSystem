<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class ProductIssueToUserDetail extends Model
{

    use HasFactory;
    protected $fillable = [
        'BofUserId',
        'ProductId',
        'issueDate',
        'returnDate',
        'shortDescription'
    ];
}
