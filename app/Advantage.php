<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Advantage extends Model
{
    public $path = '/storage/';

    public function getImgAttribute()
    {
        return $this->path . $this->image;
    }
}
