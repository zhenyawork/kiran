<?php


// Админка должна быть всегда вверху Роутов
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


// Групы, которые будут чувствительны к языкам
Route::group(['prefix' => LaravelLocalization::setLocale()], function()
{
    /** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/

    Route::get('/', 'PageController@homepage')->name('home');

    Route::get('page/{slug}', 'PageController@page')->name('page');

    Route::get('{slug}', 'CategoryController@show')->name('category');

    Route::get('{cat}/{slug}', 'LineController@index')->name('line.index');

});

