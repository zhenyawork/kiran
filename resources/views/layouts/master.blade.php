<!DOCTYPE html>
<html lang="ru">


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <!-- <meta name="csrf-token" content=""> -->

    <title>
        Главная страница |
        Dalgakiran
    </title>

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <!-- Styles -->
    <link href="/css/style.css" rel="stylesheet">

</head>
<body>
<header class="superheader">
    <div class="container superheader__container">
        <div class="superheader__tech">ТЕХНОЛОГИИ СЖАТОГО ВОЗДУХА</div>
        <nav class="superheader__menu">
            <nav class="superheader__menu-items">
                <a href="dealer.html" class="superheader__menu-link">
                    Вход для дилеров
                </a>
                <a href="engineer.html" class="superheader__menu-link">
                    Вход для инженеров
                </a>
                <a href="certificate.html" class="superheader__menu-link">
                    Проверка сертификата
                </a>
            </nav>
        </nav>
        <div class="superheader__lang">
            <a href="en.html" class="superheader__lang-change">EN</a>
        </div>
    </div>
</header>
<header class="header">
    <div class="header__container container">
        <div class="header__tech">ТЕХНОЛОГИИ СЖАТОГО ВОЗДУХА</div>
        <a href="index.html" class="header__logo">
            <img src="/img/logo.png" class="header__logo-img" alt="DALGAKIRAN Compressor Logo"/>
        </a>
        <div class="header__search">
            <form action="http://zavod/search" class="search">
                <input type="text" name="q" placeholder="Поиск по сайту" class="search__input"/>
                <button type="submit" class="search__submit">
                    <span class="sprite -search"></span>
                </button>
            </form>
        </div>
        <div class="header__contacts">
            <div class="header__phone">
                <span class="header__contacts-icon">
                    <span class="sprite -phone"></span>
                </span>
                <a href="tel:84954616235" class="header__phone">8 (495) 461-62-35</a>
            </div>
            <div class="header__email">
                <span class="header__contacts-icon">
                    <span class="sprite -email"></span>
                </span>
                <a href="mailto:info@dalgakiran.su" class="header__email">info@dalgakiran.su</a>
            </div>
        </div>
    </div>
</header>
<nav class="main-menu">
    <div class="container">
        <div class="main-menu__container">
            <ul class="main-menu__items">
                <li class="main-menu__item">
                    <a href="index.html" class="main-menu__link">Главная</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<section class="content">
    <div class="mainpage">
        <section class="mainpage__slider container">
            <div class="owl-carousel main-slider">
                <div class="main-slider__item">
                    <a href="#">
                        <img src="/img/tmp/main-slider.png" alt="DALGAKIRAN - RUSSIA"/>
                    </a>
                </div>
            </div>
        </section>

        <div class="container">
            <section class="mainpage__note">
                <a href="en/about-factory.html" class="mainpage__note-link">
                    О заводе
                </a>
                <div class="mainpage__note-text">DALGAKIRAN – БОЛЕЕ ПОЛУВЕКОВОЙ ОПЫТ</div>
                <a href="en/dalgakiran-russia.html" class="mainpage__note-link">
                    DALGAKIRAN - RUSSIA
                </a>
            </section>
        </div>

        <div class="container">
            <section class="mainpage__tours tours">
                <a href="en/3d-tour-factory.html" class="tours__link">
                    <img src="/img/tmp/3dtour1.jpg" alt=""/>
                    <span class="tours__text">
                        3-D ТУР ПО ЗАВОДУ
                    </span>
                </a>
                <a href="en/3d-tour-company.html" class="tours__link">
                    <img src="/img/tmp/3dtour2.jpg" alt=""/>
                    <span class="tours__text">
                        3-D ТУР ПО КОМПАНИИ
                    </span>
                </a>
            </section>
        </div>

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
</section>
<footer>
    <div class="footer">
        <div class="container footer__content">
            <nav class="footer__menu">
                <ul class="footer-menu">

                </ul>
                <ul class="footer-menu">

                </ul>
                <ul class="footer-menu">

                </ul>
                <ul class="footer-menu">

                </ul>
            </nav>
            <div class="footer__right">
                <div class="footer__logo">
                    <img class="footer__logo-img" src="/img/footer-bottom.png" alt=""/>
                </div>
                <div class="footer__social">
                    <a href="https://facebook.com/dalgakiran" target="_blank" class="footer__social-item">
                        <span class="footer__social-icon sprite -fb"></span>
                    </a>
                    <a href="https://twitter.com/dalgakiran" target="_blank" class="footer__social-item">
                        <span class="footer__social-icon sprite -twitter"></span>
                    </a>
                    <a href="https://youtube.com/dalgakiran" target="_blank" class="footer__social-item">
                        <span class="footer__social-icon sprite -youtube"></span>
                    </a>
                    <a href="https://www.linkedin.com/dalgakiran" target="_blank" class="footer__social-item">
                        <span class="footer__social-icon sprite -in"></span>
                    </a>
                    <a href="https://instagram.com/dalgakiran" target="_blank" class="footer__social-item">
                        <span class="footer__social-icon sprite -inst"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="modal fade" id="gl-modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal__title-block">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="modal__title" id="gl-modal-title"></div>
            </div>
            <div class="modal__content" id="gl-modal-content">

            </div>
        </div>
    </div>
</div><div class="modal micromodal-slide" id="feedback-modal">
    <div class="modal__overlay" tabindex="-1" data-micromodal-close>
        <div class="modal__container">
            <header class="modal__header">
                <div class="modal__title" id="feedback-modal-title"></div>
                <button class="modal__close" data-micromodal-close></button>
            </header>
            <main class="modal__content" id="modal-1-content">
                <form action="http://zavod/ajax/feedback" class="modal__content js-form" id="feedback-modal-form">
                    <input type="hidden" name="type" id="feedback-modal-type" />
                    <div class="form-group">
                        <label for="feedback-modal-fio">ФИО</label>
                        <input type="text" name="fio" id="feedback-modal-fio" class="form-control" required placeholder="ФИО" />
                    </div>
                    <div class="form-group">
                        <label for="feedback-modal-phone">Телефон</label>
                        <input type="text" name="phone" id="feedback-modal-phone" class="form-control" required placeholder="Телефон" />
                    </div>
                    <div class="form-group">
                        <label for="feedback-modal-email">E-mail</label>
                        <input type="email" name="email" id="feedback-modal-email" class="form-control" required placeholder="Телефон" />
                    </div>
                    <div class="form-group">
                        <label for="feedback-modal-comment">Дополнительная информация</label>
                        <textarea name="comment" id="feedback-modal-comment" placeholder="Комментарий" class="form-control" rows="3"></textarea>
                    </div>

                    <button type="submit" class="btn -black -bigger">ОТПРАВИТЬ</button>
                </form>
            </main>
        </div>
    </div>
</div>
<script src="/js/vendor/jquery/jquery.min.js"></script>

<script src="/js/vendor/micromodal/micromodal.js"></script>
<link href="/js/vendor/micromodal/micromodal.css" rel="stylesheet">

<script src="/js/vendor/notifications/notifications.js"></script>
<link href="/js/vendor/notifications/notifications.css" rel="stylesheet">


<script src="/js/scripts.js"></script>



</body>


</html>
