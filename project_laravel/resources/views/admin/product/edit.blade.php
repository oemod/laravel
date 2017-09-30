@extends('admin.master')
@section('controller','Product')
@section('action','Edit')
@section('content')
<style>
    .img_current{
        width: 200px;
        height: 100px;
        border : 2px solid black;
    }
</style>
<div class="col-lg-7" style="padding-bottom:120px">
    <form action="" method="POST">
        @include('admin.errors.error')
        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
        <div class="form-group">
            <label>Category Parent</label>
            <select class="form-control" name="sltParent">
                <option value="">Please Choose Category</option>
                <!-- chay ham cate_parent o functions.php -->
                <?php cate_parent($cate,0,"--",$product["cate_id"]) ?>
            </select>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input class="form-control" name="txtName" placeholder="Please Enter Username" value="{!! old('txtName',isset($product) ? $product['name'] :null) !!}" />
        </div>
        <div class="form-group">
            <label>Price</label>
            <input class="form-control" name="txtPrice" placeholder="Please Enter Password" value="{!! old('txtPrice',isset($product) ? $product['price'] :null) !!}" />
        </div>
        <div class="form-group">
            <label>Intro</label>
            <textarea class="form-control" rows="3" name="txtIntro">{!! old('txtIntro',isset($product) ? $product['intro'] :null) !!}</textarea>
            <script type="text/javascript">
                ckeditor("txtIntro");
            </script>
        </div>
        <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="3" name="txtContent">{!! old('txtContent',isset($product) ? $product['content'] :null) !!}</textarea>
            <script type="text/javascript">
                ckeditor("txtContent");
            </script>
        </div>
        <div class="form-group">
            <label>Image Current :</label>
            <img src="{!! asset('resources/upload/'.$product['image']) !!}" class="img_current" alt="">
        </div>
        <div class="form-group">
            <label>Images</label>
            <input type="file" name="fImages">
        </div>
        <div class="form-group">
            <label>Product Keywords</label>
            <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="{!! old('fImages',isset($product) ? $product['keywords'] :null) !!}" />
        </div>
        <div class="form-group">
            <label>Product Description</label>
            <textarea class="form-control" rows="3" name="txtDescription">{!! old('txtDescription',isset($product) ? $product['description'] :null) !!}</textarea>
        </div>
        <button type="submit" class="btn btn-default">Product Edit</button>
        <button type="reset" class="btn btn-default">Reset</button>
        <form>
        </div>
    </div>
    @endsection