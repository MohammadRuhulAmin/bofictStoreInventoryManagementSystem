<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Booknotesheet;
class BookNoteSheetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Booknotesheet::get();
        return view('admin.BookNoteSheet.index',compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function create()
    {
        return view('admin.BookNoteSheet.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
           'bookName' => 'required',
           'bookNumber'=>'required',
           'bookOpenDate' =>'required',
           'bookDescription' =>'required'

        ]);
      
        $book = new Booknotesheet();
        $book->bookName = $request->bookName;
        $book->bookNumber = $request->bookNumber;
        $book->bookOpenDate = $request->bookOpenDate;
        $book->bookCloseDate = $request->bookCloseDate;
        $book->bookDescription = $request->bookDescription;
        $book->save();
        flash('Book Created Successfully!')->success();
        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $book = Booknotesheet::findOrFail($id);
        return view('admin.BookNoteSheet.edit',compact('book'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'bookName' => 'required',
            'bookNumber'=>'required',
            'bookOpenDate' =>'required',
            'bookDescription' =>'required'

         ]);
         $book =  Booknotesheet::findOrFail($id);
         $book->bookName = $request->bookName;
         $book->bookNumber = $request->bookNumber;
         $book->bookOpenDate = $request->bookOpenDate;
         $book->bookCloseDate = $request->bookCloseDate;
         $book->bookDescription = $request->bookDescription;
         $book->save();
         flash('Book Updated Successfully!')->success();
         return redirect()->route('booknotesheet.index');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Booknotesheet::findOrFail($id);
        $book->delete();
        flash('Book is Deleted  Successfully!')->success();
        return redirect()->route('booknotesheet.index');
    }
}
