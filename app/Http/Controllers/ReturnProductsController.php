<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductStock;
use App\Models\ProductSizeStock;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Response; 
use App\Models\ReturnProduct;
class ReturnProductsController extends Controller
{
    public function returnProduct(){
        return view('return_products.return');
     }
     public function returnProductSubmit(Request $request){
         $validate = Validator::make($request->all(),[
           
             'product_id' =>'required|numeric',
             'date' =>'required|string',
             'items'=>'required',
         ]);
         // error response
         if($validate->fails()){
            return  response()->json([
                 'success'=>false,
                 'errors'=>$validate->errors()
             ],Response::HTTP_UNPROCESSABLE_ENTITY);
         }
         // Store Return Product 
         foreach($request->items as $item){
             if($item['quantity'] && $item['quantity']>0){
                 $new_item = new ReturnProduct();
                 $new_item->product_id = $request->product_id;
                 $new_item->date = $request->date;
                //  $new_item->status = $request->stock_type;
                 $new_item->size_id = $item['size_id'];
                 $new_item->quantity = $item['quantity'];
                 $new_item->save();
 
                 // Product Size Update 
                 // psq product size quantity
                 $psq = ProductSizeStock::where('product_id',$request->product_id)
                 ->where('size_id',$item['size_id'])
                 ->first();
               
                     // Stock in as return product 
                     $psq->quantity = $psq->quantity - $item['quantity'];
                
                 $psq->save();
             }
            
         }
 
         flash('Return Product  Updated Successfully !')->success();
 
         return response()->json([
             'success'=>true,
 
         ],Response::HTTP_OK);
     }
     public function history(){
         $return_products = ReturnProduct::with(['product','size'])->orderBy('created_at','DESC')->get();
         
         return view('return_products.history',compact('return_products'));
     }
}
