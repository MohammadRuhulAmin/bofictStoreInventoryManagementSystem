<?php

namespace App\Exports;

use App\Models\Admin\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
class ProductExport implements FromCollection,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return Product::all();
        return collect(Product::getProductList());
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
            'updated_at',
        ];
    }
}
