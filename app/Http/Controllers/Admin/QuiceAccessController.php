<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DataTables;
use DB;
use App\Models\Admin\Product;

class QuiceAccessController extends Controller
{
    public function AnyProductsListSearchIndex(){
        return view('allProductsInfoSearch');
    }       
public function searchAnyProduct(Request $request){
        
    if($request->ajax()){
        $output = '';
        $query = $request->get('query');
        if($query !=''){
            
            $data = DB::table('products')
            ->where('department','like','%'.$query.'%')
            ->orWhere('category','like','%'.$query.'%')
            ->orWhere('name','like','%'.$query.'%')
            ->orWhere('subcategory','like','%'.$query.'%')
            ->orWhere('brand','like','%'.$query.'%')
            ->orWhere('item','like','%'.$query.'%')
            ->orWhere('type','like','%'.$query.'%')
            ->get();
        }
        else{
            $data = DB::table('products')->get();
        }
        $totalRow = $data->count();
        if($totalRow>0){
            foreach($data as $row){
                $output .='<tr>
                    <td>'.$row->id.'</td>
                    <td>'.$row->department.'</td>
                    <td>'.$row->name.'</td>
                    <td>'.$row->category.'</td>
                    <td>'.$row->subcategory.'</td>
                    <td>'.$row->brand.'</td>
                    <td>'.$row->item.'</td>
                    <td>'.$row->type.'</td>
                </tr>';
            }
        }
        else{
            $output = '
            <tr>
                <td align="center" colspan="5">No Data Found</td>
            </tr>';
        }

        $data = array(
            'productsInformation'=>$output,
            'totalProductInformation' =>$totalRow
        );
        echo json_encode($data);
    }

}
            
            
        

    
}


// public function searchAnyProduct(Request $request){
        
//     if($request->ajax()){
//         $output = '';
//         $query = $request->get('query');
//         if(!empty($query)){
//             $data = DB::table('products')
//             ->where('department','like','%'.$query.'%')
//             ->orWhere('category','like','%'.$query.'%')
//             ->orWhere('name','like','%'.$query.'%')
//             ->orWhere('subcategory','like','%'.$query.'%')
//             ->orWhere('brand','like','%'.$query.'%')
//             ->orWhere('item','like','%'.$query.'%')
//             ->orWhere('type','like','%'.$query.'%')
//             -get();
//         }
//         else{
//             $data = DB::table('products')->get();

//         }
//         $totalRow = $data->count();
//         if($totalRow>0){
//             foreach($data as $row){
//                 $output .='<tr>
//                     <td>'.$row->department.'</td>
//                     <td>'.$row->category.'</td>
//                     <td>'.$row->subcategory.'</td>
//                     <td>'.$row->brand.'</td>
//                     <td>'.$row->item.'</td>
//                     <td>'.$row->type.'</td>
//                 </tr>';
//             }
//         }
//         else{
//             $output = '
//             <tr>
//                 <td align="center" colspan="5">No Data Found</td>
//             </tr>';
//         }

//         $data = array(
//             'productsInformation'=>$output,
//             'totalProductInformation' =>$totalRow
//         );
        
//     }

// }