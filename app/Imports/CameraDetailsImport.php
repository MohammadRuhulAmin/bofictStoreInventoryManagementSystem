<?php

namespace App\Imports;
use App\Models\Admin\Cameradetail;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
class CameraDetailsImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        // all the row heading must be small letters 
        return new Cameradetail([
            'ictNo'=> $row['ictno'],
            'cameraParentLoccation'=> $row['cameraparentloccation'],
            'specificLocationOfCamera' => $row['specificlocationofcamera'],
            'cameraType' => $row['cameratype'],
            'defaultIpAddress' => $row['defaultipaddress'],
            'usedIpAddress' => $row['usedipaddress'],
            'remarks' => $row['remarks']
        ]);
    }
}
