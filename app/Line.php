<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Pcategory;

class Line extends Model
{
    public function ProductCategory()
    {
        return $this->belongsTo(Pcategory::class);
    }

    public function category()
    {
        return $this->belongsTo(Pcategory::class, 'pcategory_id', 'id'  );
    }

    public function getUrlAttribute()
    {
        return  '/' . $this->category->slug . '/' . $this->slug;
    }
}
