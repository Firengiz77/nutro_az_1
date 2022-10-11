<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable = ['name','slug','meta_title','meta_description','meta_keyword'];

       public function category2(){
    return $this->belongsTo('App\Models\Category','category_id');
    }


}
