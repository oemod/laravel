<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cate extends Model
{
    protected $table = 'cates';

    protected $fillable = ['name','alias','order','parent_id','keywords','description'];

    public $timestamps = true;    /*không có created_at va updated_at thi de false*/

    public function product ()
    {
    	return $this->hasMany('App\Product');
    }
}
