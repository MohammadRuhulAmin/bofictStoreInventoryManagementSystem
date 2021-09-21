<?php

namespace App\Exports\Pdf;

use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\Support\Responsable;
use Maatwebsite\Excel\Concerns\Exportable;
class ProductExpCatSubCat implements FromCollection,
    WithHeadings, Responsable
{
    use Exportable;
    private $filename = "productsList.xlsx";
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return collect(Product::getProductListByCategorySubCategoryToPdf());
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
