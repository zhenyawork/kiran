@extends('layouts.master')
@section('title')
    {{$cat->name}} |
    Dalgakiran
@endsection

@section('content')
    <div class="container-fluid top-path" style="">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul>
                    <li><a href="/">Главная</a></li> >>
                    <li><a href="/category">Категории</a></li> >>
                    <li>{{$cat->name}}</li>
                </ul>
            </div>
        </div>
        </div>
    </div>
    <div class="container">
       <div class="gfilter__title title"> <h1>{{$cat->name}}</h1></div>
    </div>
    <div class="container mar-b-5">
        <div class="row">
            <div class="col-md-12 ">
                {!! $cat->description !!}
            </div>
        </div>
    </div>

    <div class="container">
        <div class="gfilter__title title"> <h2>{{$cat->name}} DALGAKIRAN</h2></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-5 mar-b-5">
                {!! $cat->description2 !!}
            </div>
        </div>
    </div>

    <section class="content">
        <div class="container">
            <h1 class="page-title">Преимущества компрессоров DALGAKIRAN</h1>
        </div>
    </section>
    <section>
        <div class="container" style="margin-top:20px;">
            <div class="row">

               @foreach($cat->advs as $ad)

                <div class="col-md-4 col-sm-4 col-xs-6 adv-wrapper" style="margin-bottom:20px;">
                    <div class="img-block text-center">
                        <img src="{{$ad->img}}" alt="{{$ad->name}}">
                        <div class="adv-title text-center">
                            {{$ad->name}}
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="gfilter__title title"> <h3>Технические особенности {{$cat->title2 ?? $cat->name}} DALGAKIRAN</h3></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <img src="/storage/{{$cat->image_inside}}" alt="">
                </div>
            </div>
        </div>
    </section>
    <section class="series" style="margin-top:100px;">
        <div class="container">

                @foreach($cat->lines as $line)
                <a class="series-line-a" href="{{$line->url}}" style="color:#313131;">
                <div class="line-wrapper">
                <div class="row">
                    <div class="col-md-3 col-sm-4 c_top">
                        {{$line->name}}
                    </div>
                    <div class="col-md-3 col-sm-4 c_next">
                        <p>Мощность</p>
                        <p>{{$line->moshnost}}</p>
                    </div>

                    <div class="col-md-3 col-sm-4 c_next">
                        <p>Давление</p>
                        <p>{{$line->davlenie}}</p>
                    </div>

                    <div class="col-md-3 col-sm-4 c_next">
                        <p>Производительность</p>
                        <p>{{$line->davlenie}}</p>
                    </div>
                </div>

                <div class="row btm-row">
                    <div class="col-md-3 col-sm-4">
                       <?php  $images = json_decode($line->images); ?>
                        @foreach($images as $image)
                               <img src="/storage/{{$image}}" alt="" width="85">
                        @endforeach
                    </div>

                    <div class="col-sm-9 col-xs-12 c_next2">
                         {{ str_limit($line->description, $limit = 300, $end = '...')}}

                    </div>

                </div>
                </a>
                </div>
                @endforeach


        </div>

    </section>

@stop