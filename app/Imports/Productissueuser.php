<?php

namespace App\Imports;

use App\Models\Admin\Productissued;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
class Productissueuser implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    

    public function model(array $row)
    {
        return new Productissued([
          
            'name'=>$row['name'],
            'bofid'=>$row['bofid'],
            'designation'=>$row['designation'],
        ]);
    }
}
