<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductImages extends Model
{
    protected $table = 'product_images';

    protected $fillalbe = ['image','product_id'];

    public $timestamps = true;

    public function product ()
    {
    	return $this->belongto('App\Product');
    }
}
