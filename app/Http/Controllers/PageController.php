<?php

namespace App\Http\Controllers;

use App\Http\Helpers\_Helper;
use App\Page;
use App\Pcategory;
use Illuminate\Http\Request;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

// This controller is used for display all frontend pages
// It's not CRUD
class PageController extends Controller
{
    public function homepage()
    {
       $data['categories'] = Pcategory::all();

        return view('pages.home', $data);
    }

    public function page($slug)
    {
        $page = Page::whereSlug($slug)->firstOrFail();
        return view('pages.page', compact('page'));
    }


    public function getLocale()
    {
        return LaravelLocalization::getCurrentLocale();
    }
}
