<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

// This controller is used for display all frontend pages
// It's not CRUD
class PageController extends Controller
{
    public function homepage()
    {
        return view('pages.home');
    }


    public function getLocale()
    {
        return LaravelLocalization::getCurrentLocale();
    }
}
