<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Advantage;
class ProductCategory extends Model
{
    protected $table = 'product_categories';
    public $path = 'storage';

    public function advs()
    {
        return $this->hasMany(Advantage::class, 'product_categories_id', 'id');
    }

    public function getImgAttribute()
    {
        return $this->path . $this->image;
    }

    public function lines()
    {
        return $this->hasMany(Line::class,  'product_categories_id', 'id');
    }
}
