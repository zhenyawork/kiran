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
        <a href="/" class="header__logo">
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
                <a href="tel:{{setting('kontakty.phone')}}" class="header__phone">{{setting('kontakty.phone')}}</a>
            </div>
            <div class="header__email">
                <span class="header__contacts-icon">
                    <span class="sprite -email"></span>
                </span>
                <a href="mailto:{{setting('kontakty.email')}}" class="header__email">{{setting('kontakty.email')}}</a>
            </div>
        </div>
    </div>
</header>