<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Advantage;
use App\Line;

class Pcategory extends Model
{
    protected $table = 'pcategories';
    public $path = 'storage';

    public function advs()
    {
        return $this->hasMany(Advantage::class);
    }

    public function getImgAttribute()
    {
        return $this->path . $this->image;
    }



    public function lines()
    {
        return $this->hasMany(Line::class);
    }
}
