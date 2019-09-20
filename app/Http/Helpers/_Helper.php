<?php
namespace App\Http\Helpers;
use App\Block;
use App\Slider;

class _Helper
{
    public static $storage = '/storage/';
    public static $slider = null;

    // Получить изображение со слайдера
    public static function getSlider($slider)
    {
        // Если слайдер еще не загружен из БД, грузим
        if(self::$slider === null)
            self::$slider = Slider::whereSlider($slider)->first();
        return self::$storage . self::$slider->image;
    }
    // Получить атрибут ALT в слайдере
    public static function getSliderTitle($slider)
    {
        if(self::$slider != null) return self::$slider->title;
        return Slider::whereSlider($slider)->first()->title;
    }

    public static function getBlock($block, $lang = 'ru')
    {
       return  Block::whereBlock($block)->whereLang($lang)->first()->body;
    }






}