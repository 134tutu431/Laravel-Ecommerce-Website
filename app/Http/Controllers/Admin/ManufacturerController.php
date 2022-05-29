<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Service\Manufacturer\ManufacturerService;
use App\Models\Manufacturer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ManufacturerController extends Controller
{
    protected $manufacturerService;
    public function __construct(ManufacturerService $manufacturerService)
    {
        $this->manufacturerService=$manufacturerService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.manufacturer.list_manufacturer',[
            'title'=>'List of Manufacturer - Unistore',
            'manufacturers'=>$this->manufacturerService->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.manufacturer.add',[
            'title'=>'Add Manufacturer - Unistore',
        ]);
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
            'name'=>'required|unique:App\Models\Manufacturer,name',
            'file_sc'=>'required'
        ],[
            'file_sc.required'=>'Please select image!!!'
        ]);
        $this->manufacturerService->create($request);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Manufacturer  $manufacturer
     * @return \Illuminate\Http\Response
     */
    public function show(Manufacturer $manufacturer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Manufacturer  $manufacturer
     * @return \Illuminate\Http\Response
     */
    public function edit(Manufacturer $manufacturer)
    {
        return view('admin.manufacturer.edit',[
            'title'=>'Edit the list category - Unistore'.$manufacturer->name,
            'manufacturer' => $manufacturer
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Manufacturer  $manufacturer
     * @return \Illuminate\Http\Response
     */
    public function update(Manufacturer $manufacturer,Request $request)
    {
        $this->manufacturerService->update($manufacturer,$request);
        return redirect('/admin/manufacturers/list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Manufacturer  $manufacturer
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $result = $this->manufacturerService->delete($request);
        if ($result){
            return response()->json([
                'error'=>false,
                'message'=>'Delete this manufacturer successfully !!!'
            ]);
        }
        return response()->json(['error'=>true]);
    }
    public function search(Request $request)
    {
        return view('admin.manufacturer.list_manufacturer',[
            'title' => 'List of Manufacturer - Unistore',
            'manufacturers' => $this->manufacturerService->search($request),
            'search'=> $request->input('search')
        ]);
    }
}
