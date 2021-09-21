<?php

namespace App\Exports;

use App\Models\Admin\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Contracts\Support\Responsable;
use Maatwebsite\Excel\Concerns\Exportable;

class ProductExportByCategory implements FromCollection,WithHeadings,Responsable
{

    use Exportable;
    private $filename = "productsList.xlsx";

   
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return Product::all();
        return collect(Product::getProductListByCategory());
    }
    public function headings():array{
        return[
            'id',
            'name',
            'category',
            'subcategory',
            'type',
            'item',
            'brand',
            'image',
            'description',
            'department',
            'created_at',
            'updated_at'
        ];
    }
}