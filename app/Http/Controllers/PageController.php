<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Helpers\_Helper;
use Illuminate\Http\Request;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

// This controller is used for display all frontend pages
// It's not CRUD
class PageController extends Controller
{
    public function homepage()
    {
       $data['categories'] = Category::all();

        return view('pages.home', $data);
    }


    public function getLocale()
    {
        return LaravelLocalization::getCurrentLocale();
    }
}
