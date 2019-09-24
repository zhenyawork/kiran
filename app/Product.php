<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Line;

class Product extends Model
{
    public $path = '/storage/';

    public function line()
    {
        return $this->belongsTo(Line::class);
    }

    public function getImageAttribute()
    {
        return $this->path . $this->photo;
    }

    public function getUrlAttribute()
    {
        return  '/' . $this->line->category->slug . '/' .$this->line->slug . '/' .  $this->slug;
    }
}
