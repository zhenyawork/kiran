<?php

namespace App\Http\Controllers;

use App\Pcategory;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function show($slug)
    {
        $cat = Pcategory::whereSlug($slug)->firstOrFail();
        return view('pages.category', compact('cat'));
    }

}
