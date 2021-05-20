<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use App\Http\Requests\CreateRole;

class RolesController extends Controller
{
    
    public function index()
    {
        return Role::all();
    }

    public function store(CreateRole $request)
    {
        
        $data = $request->validated();
        $role = Role::create($data);

        return $role;

    }

    public function show($id)
    {
        return Role::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        
        $role = Role::findOrFail($id);
        $role->update($request->all());

        return $role;

    }

    public function destroy($id)
    {
        
        $role = Role::findOrFail($id);
        $role->delete();

    }
}
