<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\CateRequest;

use App\Cate;

use App\Product;

use App\ProductImages;

use App\Http\Requests\ProductRequest;

use Illuminate\Support\Facades\Input;

use File;	

use Auth;

class ProductController extends Controller
{

	public function getAdd()
	{
		$cate = Cate::select('name','id','parent_id')->get()->toArray();
		return view('admin.product.add',compact('cate'));
	}
	public function postAdd(ProductRequest $product_request)
	{	
		// $file_name : để lấy ảnh

		$file_name = $product_request->file('fImages')->getClientOriginalName();

		$product = new Product();
		$product->name = $product_request->txtName;
		$product->alias = changeTitle($product_request->txtName);
		$product->price = $product_request->txtPrice;
		$product->intro = $product_request->txtIntro;
		$product->content = $product_request->txtContent;
		$product->image = $file_name; 
		$product->keywords = $product_request->txtKeywords;
		$product->description = $product_request->txtDescription;
		$product->user_id = Auth::user()->id;
		$product->cate_id = $product_request->sltParent;
		$product_request->file('fImages')->move('resources/upload/',$file_name);
		$product->save();
		$product_id = $product->id;
		// if ($product_request->hasFile('fProductDetail')) {
			
		// 	foreach (Input::file('fProductDetail') as $file) {
		// 		$product_img = new ProductImages();
		// 		if (isset($file)) {
		// 			$product_img->image = $file->getClientOriginalName();
		// 			$product_img->product_id = $product_id;
		// 			$file->move('resources/upload/detail/',$file->getClientOriginalName());
		// 			$product_img->save();
		// 		}
		// 	}
		// }
		return redirect()->route('admin.product.list')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Add Product']);
	}

	public function getList()
	{
		$data = Product::select('id','name','price','cate_id','created_at')->orderBy('id','DESC')->get()->toArray();
		return view('admin.product.list',compact('data'));
	}


	public function getDelete($id)
	{
		// $produc_detail= Product::find($id)->pimages;
		// foreach ($produc_detail as $value) {
		// 	File::delete('resources/upload/detail/'.$value["image"]);
		// }
		$product = Product::find($id);
		File::delete('resources/upload/'.$product->image);
		$product->delete($id);
		return redirect()->route('admin.product.list')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Delete Product']);
	}



	public function getEdit($id)
	{
		$cate = Cate::select('id','name','parent_id')->get()->toArray();
		$product = Product::find($id);
		return view('admin.product.edit',compact('cate','product'));
	}

	public function postEdit($id,Request $request)
	{	

		$product = Product::find($id);

		$product->name = $request['txtName'];
		$product->alias = changeTitle($request['txtName']);
		$product->price = $request['txtPrice'];
		$product->intro = $request['txtIntro'];
		$product->content = $request['txtContent']; 
		$product->keywords = $request['txtKeywords'];
		$product->description = $request['txtDescription'];
		$product->user_id = 1;
		$product->cate_id = $request['sltParent'];
		$product->save();
		return redirect()->route('admin.product.list')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Update Product']);

	}
}