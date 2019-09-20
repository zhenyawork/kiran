@section('title')
    Главная страница |
    Dalgakiran
@endsection

@include('parts.head')
@include('parts.header')
@include('parts.top-menu')

<section class="content">
    @section('content')

    @show
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
