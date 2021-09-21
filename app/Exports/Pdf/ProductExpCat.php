<?php

namespace App\Exports\Pdf;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Contracts\Support\Responsable;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;

class ProductExpCat implements FromCollection,
    WithHeadings,
    Responsable,
    ShouldAutoSize ,
    WithCustomStartCell,
    WithDrawings
{
    use Exportable;
    private $filename = "productsList.xlsx";
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return collect(Product::getProductListByCategoryToPdf());
    }
    
    public function headings():array{
        return[
           
            'name',
            'category',
            'subcategory',
            'type',
            'item',
            'brand',
            'description',
            'department',
        ];
    }
    public function drawings()
    {
        $drawing = new Drawing();
        $drawing->setName('BOF');
        $drawing->setDescription('');
        $drawing->setPath(public_path('/bof-logo/bof-logo.png'));
        $drawing->setHeight(90);
        $drawing->setCoordinates('B2');
        return $drawing;
    }
    public function startCell():string{
        return 'A8';
    }
}
