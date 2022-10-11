<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\HasMedia;

class Slider extends Model implements HasMedia
{
    use HasFactory,InteractsWithMedia;
    protected $fillable=['title','desc2'];

    public function registerMediaCollections(): void
    {
       
        $this->addMediaCollection('thumbnail')->acceptsMimeTypes(['image/png','image/jpg','image/jpeg','image/gif']);

    }
    public function registerAllMediaConversions(): void
    {
        $this->addMediaConversion('preview')
        ->crop('crop-center',248,240);
    }
}
