<?php

// Групы, которые будут чувствительны к языкам
Route::group(['prefix' => LaravelLocalization::setLocale()], function()
{
    /** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/

    Route::get('/', 'PageController@homepage')->name('home');






});



// Админка должна быть всегда внизу Роутов
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
