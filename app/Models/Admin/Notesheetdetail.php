<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notesheetdetail extends Model
{
    use HasFactory;
    protected $fillable =[
        "PVRV","date","details","credit","debit","cashbalance","ic","oic","erp_indent_voucher_no","erp_entry_date","comments",
        "booknotesheet_id"
    ];
}
