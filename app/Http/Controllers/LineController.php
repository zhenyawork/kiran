<?php

namespace App\Http\Controllers;

use App\Line;
use App\Product;
use Illuminate\Http\Request;

class LineController extends Controller
{
    public function index( $cat, $line )
    {
        $line = Line::whereSlug($line)->firstOrFail();
        $products = Product::whereLineId( $line->id )->paginate(20);
        return view('pages.products', compact('products', 'line'));
    }
}
