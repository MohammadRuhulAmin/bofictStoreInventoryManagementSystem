<?php
namespace App\Models\Admin;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Admin\Notesheet;
class Booknotesheet extends Model
{
    use HasFactory;
    protected $fillable = [
        'bookName','bookNumber','bookOpenDate','bookCloseDate','bookDescription'
    ];
    
    public function notesheets(){
        return $this->hasMany(Notesheet::class);
     }
}
