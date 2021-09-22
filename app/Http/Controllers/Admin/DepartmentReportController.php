<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Product;
use PDF; 
use Maatwebsite\Excel\Excel;
class DepartmentReportController extends Controller
{
    public function expRepByDepartmentToPDF(Request $request){
        $this->validate($request,[
            'SearchByDepartment_1'=>'required'
        ]);
        $department = $request->SearchByDepartment_1;

        $productsList = Product::where(['department' => $department])->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'department' =>$department,
        ];
        
        $pdf = PDF::loadView('admin.reports.pdf.productList_department',$data);
        return $pdf->download('productList.pdf');
    }

    public function expRepByDepartmentCatToPDF(Request $request){
        $this->validate($request,[
            'SearchByDepartment_2'=>'required',
            'SearchByCategory_2' =>'required',
        ]);
        $department = $request->SearchByDepartment_2;
        $category = $request->SearchByCategory_2;
        $productsList = Product::where(['department' => $department,'category' =>$category])->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'department' =>$department ,
            'category' =>$category,
        ];

        $pdf = PDF::loadView('admin.reports.pdf.productList_deptCat',$data);
        return $pdf->download('productList.pdf');

    }
    public function expRepByDepartmentCatSubCatToPDF(Request $request){
        $this->validate($request,[
            'SearchByDepartment_3'=>'required',
            'SearchByCategory_3' =>'required',
            'SearchBySubCategory_3' =>'required',
        ]);
        
        $department = $request->SearchByDepartment_3;
        $category = $request->SearchByCategory_3;
        $subcategory = $request->SearchBySubCategory_3;
        $productsList = Product::where(['department' => $department,'category' =>$category,'subcategory'=>$subcategory])->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'department' =>$department,
            'category' =>$category,
            'subcategory' =>$subcategory,
        ];

        $pdf = PDF::loadView('admin.reports.pdf.productList_deptCat',$data);
        return $pdf->download('productList.pdf'); 
    }
}
