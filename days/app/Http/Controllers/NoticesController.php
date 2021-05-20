<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notice;
use App\Http\Requests\CreateNotice;

class NoticesController extends Controller
{
   
    public function index()
    {
        return Notice::all();
    }

    public function store(CreateNotice $request)
    {
        
        $data = $request->validated();
        $notice = Notice::create($data);

        return $notice;

    }

    public function show($id)
    {
        return Notice::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $notice = Notice::findOrFail($id);
        $notice->update($request->all());

        return $notice;

    }

    public function destroy($id)
    {
        
        $notice = Notice::findOrFail($id);
        $notice->delete();

    }
}
