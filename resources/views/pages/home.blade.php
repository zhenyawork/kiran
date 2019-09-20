@extends('layouts.master')

@section('content')

    <div class="mainpage">
        <section class="mainpage__slider container">
            <div class="owl-carousel main-slider">
                <div class="main-slider__item">
                    <a href="#">
                        <img src="{{_Helper::getSlider('main_slider')}}" alt="{{_Helper::getSliderTitle('main_slider')}}"/>
                    </a>
                </div>
            </div>
        </section>

        {!! \App\Http\Helpers\_Helper::getBlock('block-1') !!}

        <div class="container">
            <section class="mainpage__benefits benefits">
                <div class="benefits__title">Преимущества DALGAKIRAN</div>
                <div class="benefits__note">или 8 причин купить наше оборудование</div>
                <div class="benefits__list">
                </div>
            </section>
        </div>

        <div class="container">
            <section class="mainpage__gfilter gfilter">
                <div class="gfilter__title title">КАЛЬКУЛЯТОР ПОДБОРА ОБОРУДОВАНИЯ</div>
                <div class="gfilter__container">
                    <div class="gfilter__tabs">
                    </div>
                    <div class="gfilter__content">
                        <div class="gfilter__items">
                            <form action="http://zavod/ajax/podbor" class="/js-gfilter-form active" method="post"></form>
                        </div>
                        <div class="gfilter__submit-block">
                            <button class="btn -red -w100p submit-filter">
                                Подобрать
                            </button>
                        </div>
                    </div>
                </div>
            </section>

            <div class="gfilter-results js-gfilter-results">

            </div>

        </div>

        <div class="container">
            <section class="mainpage__purposes purposes">
                <div class="purposes__title title">ПОДБОР КОМПРЕССОРА ДЛЯ</div>
                <div class="purposes__items">
                </div>
            </section>
        </div>

        <section class="mainpage__catalog catalog-categories">
            <div class="container">
                <div class="catalog-categories__title title">Каталог</div>
                <div class="catalog-categories__items">
                    @isset($categories)
                        @foreach($categories as $cat)
                           <div class="cat-wrapper" style="width: 24%;">
                               <div class="cat-img" >
                                   <a href="/products/{{$cat->slug}}">
                                       <img src="/storage/{{$cat->image}}" alt="{{$cat->title}}">
                                   </a>
                               </div>
                           </div>
                        @endforeach
                    @endisset
                </div>
            </div>
        </section>

        <div class="container">
            <section class="mainpage__products">
                <ul class="mainpage__products-tabs js-product-tabs">
                    <li class="mainpage__products-tab-item">
                        <span class="mainpage__products-tab-link js-product-tab _active">Популярные</span>
                    </li>
                    <li class="mainpage__products-tab-item">
                        <span class="mainpage__products-tab-link js-product-tab">Акции и скидки</span>
                    </li>
                    <li class="mainpage__products-tab-item">
                        <span class="mainpage__products-tab-link js-product-tab">Новинки</span>
                    </li>
                </ul>
                <div class="mainpage__products-list">
                    <div class="products">
                    </div>
                    <div class="mainpage__products-catalog-link">
                        <a href="en/catalog.html" class="btn -black -bigger">В каталог</a>
                    </div>
                </div>
            </section>
        </div>

        <div class="container">
            <section class="mainpage__help-block">
                <div class="mainpage__help-block-item js-feedback" data-type="Получить
консультацию">
                    <div class="mainpage__help-block-info">
                        Получить<br />
                        консультацию
                    </div>
                    <img src="/img/help-1.png" class="mainpage__help-block-img" alt=""/>
                </div>
                <div class="mainpage__help-block-item js-feedback" data-type="Сделать
расчёт">
                    <div class="mainpage__help-block-info">
                        Сделать<br />
                        расчёт
                    </div>
                    <img src="/img/help-2.png" class="mainpage__help-block-img" alt=""/>
                </div>
                <div class="mainpage__help-block-item js-feedback" data-type="Получить
пневмоаудит">
                    <div class="mainpage__help-block-info">
                        Получить<br />
                        пневмоаудит
                    </div>
                    <img src="/img/help-3.png" class="mainpage__help-block-img" alt=""/>
                </div>
            </section>
        </div>

        <div class="container">
            <section class="mainpage__clients">
                <div class="mainpage__clients-title">Наши клиенты</div>
                <div class="mainpage__clients-note">
                    <p>Более&nbsp;<strong>9875</strong>&nbsp;клиентов не могут ошибаться выбрав продукцию компании Dalgakiran, среди них:</p>
                </div>
                <div class="mainpage__clients-items">
                </div>
            </section>
        </div>


        <div class="container">
            <section class="mainpage__articles m-articles">
                <div class="m-articles__item">
                    <a href="en/news.html" class="m-articles__title title">Новости</a>
                </div>
                <div class="m-articles__item">
                    <a href="en/articles.html" class="m-articles__title title">Статьи</a>
                </div>
                <div class="m-articles__item">
                    <a href="https://youtube.com/" target="_blank" class="m-articles__title _underline title">
                        НАШ КАНАЛ
                    </a>
                    <div class="m-articles__date">&nbsp;</div>
                    <a href="https://youtube.com/" target="_blank" class="m-articles__article _underline">
                        Перейти на канал
                    </a>
                    <a href="https://youtube.com/" target="_blank" class="m-articles__image">
                        <img class="m-articles__img" src="/img/youtube.png" alt="dalgakiran youtube channel"/>
                    </a>
                </div>
            </section>
        </div>

        <div class="container">
            <section class="mainpage__partners">
                <div class="mainpage__partners-title title">ПАРТНЁРЫ</div>
                <div class="mainpage__partners-items">
                </div>
            </section>
        </div>
    </div>


@endsection