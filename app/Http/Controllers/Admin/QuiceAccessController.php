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
                ->orWhere('productStatus','like','%'.$query.'%')
                ->orWhere('name','like','%'.$query.'%')
                ->orWhere('subcategory','like','%'.$query.'%')
                ->orWhere('brand','like','%'.$query.'%')
                ->orWhere('item','like','%'.$query.'%')
                ->orWhere('type','like','%'.$query.'%')
               ->orWhere('description','like','%'.$query.'%')
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
                        <td>'.$row->productStatus.'</td>
                        <td>'.$row->department.'</td>
                        <td>'.$row->name.'</td>
                        <td>'.$row->category.'</td>
                        <td>'.$row->subcategory.'</td>
                        <td>'.$row->brand.'</td>
                        <td>'.$row->item.'</td>
                        <td>'.$row->type.'</td>
                        <td>'.$row->description.'</td>
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
    public function AnyCamerasListSearchIndex(){
        return view('allCameraInformationList');
    }
    public function searchAnyCamera(Request $request){
        if($request->ajax()){
            $output = '';
            $query = $request->get('query');
            if($query !=''){
                $data = DB::table('cameradetails')
                ->where('ictNo','like','%'.$query.'%')
                ->orWhere('cameraParentLoccation','like','%'.$query.'%')
                ->orWhere('specificLocationOfCamera','like','%'.$query.'%')
                ->orWhere('cameraType','like','%'.$query.'%')
                ->orWhere('defaultIpAddress','like','%'.$query.'%')
                ->orWhere('usedIpAddress','like','%'.$query.'%')
                ->orWhere('remarks','like','%'.$query.'%')
                ->orWhere('nvr','like','%'.$query.'%')
                ->get();
            }
            else{
                $data = DB::table('cameradetails')->get();
            }
            $totalRow = $data->count();
            if($totalRow>0){
                foreach($data as $row){
                    $output .='<tr>
                        <td>'.$row->id.'</td>
                        <td>'.$row->ictNo.'</td>
                        <td>'.$row->cameraParentLoccation.'</td>
                        <td>'.$row->specificLocationOfCamera.'</td>
                        <td>'.$row->cameraType.'</td>
                        <td>'.$row->defaultIpAddress.'</td>
                        <td>'."<a href='http://$row->usedIpAddress''>$row->usedIpAddress</a>".'</td>
                        <td>'.$row->nvr.'</td>
                        <td>'.$row->remarks.'</td>
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





