<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;


class Product extends Model implements HasMedia
{
    use HasFactory,InteractsWithMedia;
    protected $fillable=['name','slug','short_desc','desc','meta_title','meta_description','meta_keyword'];

    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('images')->acceptsMimeTypes(['image/png','image/jpg','image/jpeg']);

    }
    public function registerAllMediaConversions(): void
    {
        $this->addMediaConversion('preview')
        ->crop('crop-center',248,240);
    }

    public function category(){
    return $this->belongsTo('App\Models\Category','category_id');
    }

}
