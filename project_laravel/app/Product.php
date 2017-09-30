<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillalbe = ['name','alias','price','intro','content','image','keywords','description','user_id','cate_id'];

    public $timestamps = true;

    public function cate()
    {
    	return $this->belongto('App\Cate');
    }
    public function user()
    {
    	return $this->belongto('App\User');
    }
    public function pimages()
    {
    	return $this->hasMany('App\Productimages');
    }
}
