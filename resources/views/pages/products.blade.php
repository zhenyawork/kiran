@extends('layouts.master')
@section('title')
    {{trans('t.models')}}
    Dalgakiran
@endsection


@section('content')
    <div class="container-fluid top-path" style="">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul>
                        <li><a href="/">Главная</a></li> >>
                        <li><a href="/{{$line->category->slug}}">{{$line->category->name}}</a></li> >>
                        <li>{{$line->name}}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="gfilter__title title"> <h1>{{trans('t.models')}} {{$line->name}}</h1></div>
    </div>
    <div class="container mar-b-5">
        <div class="row">
            @foreach($products as $prod)
            <div class="col-md-3 col-sm-4 ">
                <div class="product-wrapp">
                    <div class="p-top ">
                        <div class="col-xs-6 p-t-1 p-t">Артикул {{$prod->art}}</div>
                        <div class="col-xs-6 p-t-2 p-t">Характеристики</div>
                    </div>
                    <div class="p-name text-center">
                        {{$prod->title}}
                    </div>
                    <div class="chars">
                        <p>Страна производитель: <span>{{$prod->country ?? 'Не указано'}}</span></p>
                        <p>Тип компрессора: <span>{{$prod->tip_compresora ?? 'Не указано'}}</span></p>
                        <p>Тип привода: <span>{{$prod->tip_privoda ?? 'Не указано'}}</span></p>
                        <p>Давление: <span>{{$prod->davlenie ?? 'Не указано'}}</span></p>
                        <p>Мощность двигателя: <span>{{$prod->moshnost_dvigatela ?? 'Не указано'}}</span></p>
                    </div>
                    <div class="main-img text-center ">
                        <a href="{{$prod->url}}">
                        <img width="240" src="{{$prod->image}}" alt="{{$prod->title}}">
                        </a>
                    </div>
                    <div class="p-price">
                        <div class="col-xs-5 oldprice">
                            {{ number_format($prod->oldprice, 0, '', ' ' ) }} <span>руб</span>
                        </div>
                        <div class="col-xs-7 price"> {{ number_format($prod->price, 0, '', ' ' ) }} <span>руб</span></div>
                    </div>
                    <div class="clear"></div>
                    <div class="p-buy">
                        <div class="col-xs-3">
                            <div class="add">
                                <img title="Добавить в сравнение" src="/img/ico/1.png" alt="">
                            </div>
                        </div>
                      <div class="col-xs-6 text-center">
                            <button class="buy-btn">ЗАКАЗАТЬ</button>
                        </div>
                        <div class="col-xs-3 text-center ">
                            <div class="add">
                                <img title="Добавить в избранное" src="/img/ico/2.png" alt="">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            @endforeach
        </div>
    </div>



@endsection