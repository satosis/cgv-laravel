<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequestCategory;
use Illuminate\Support\Str;
use Carbon\Carbon;
class AdminCategoryController extends Controller
{
    public function index(){
        $category=Category::paginate(10);
        $viewData=[
            'category'=>$category
        ];
        return view('admin.category.index',$viewData);
    }
    public function create(){
        return view('admin.category.create');
    }
    public function store(AdminRequestCategory $request){
        $data =$request->except('_token');
        $data['c_slug'] =Str::slug($data['c_name']);
        $data['created_at']=Carbon::now();
        $id =Category::insertGetId($data); 
        return redirect()->back();
    }
    public function edit($id){
        $category =Category::find($id);
        return view('admin.category.update',compact('category'));
    }
    public function update(AdminRequestCategory $request ,$id){
        $category           = Category::find($id);
        $data               = $request->except('_token');
        $data['c_slug']     = Str::slug($request->c_name);
        $data['updated_at'] = Carbon::now();

      

        $category->update($data);
        return redirect()->back();
    }
    public function delete($id){
        $category =Category::find($id);
        if($category) $category->delete();
        return redirect()->back();
    }
}
