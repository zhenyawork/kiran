<?php

namespace App\Http\Controllers;

use App\Http\Helpers\_Helper;
use Illuminate\Http\Request;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

// This controller is used for display all frontend pages
// It's not CRUD
class PageController extends Controller
{
    public function homepage()
    {
       // dd(_Helper::getSlider('main_slider'));
        return view('pages.home');
    }


    public function getLocale()
    {
        return LaravelLocalization::getCurrentLocale();
    }
}
