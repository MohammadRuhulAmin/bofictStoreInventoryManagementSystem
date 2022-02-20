<?php

namespace App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Notesheet;

class Notesheet extends Model
{
    use HasFactory;
    protected $fillable = [
        'booknotesheet_id',
        'notesheetDate',
        'notesheet_no',
        'reasonForTheNoteSheet',
        'amount',
        'titleDescription'
    ];
    public function booknotesheet(){
        return $this->belongsTo(Notesheet::class);
    }

}


