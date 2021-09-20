<?php

namespace App\Exports;
use App\Models\Admin\Product;
use Maatwebsite\Excel\Concerns\FromCollection;

class ProductExportByCategorySubCategory implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return collect(Product::getProductListByCategorySubcategory());
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
