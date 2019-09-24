$( document ).ready(function() {

    $('.line-wrapper').hover(function () {
        $(this).toggleClass('backrnd');
    })

    $('.p-t-2').hover(function () {
         $(this).parent().siblings('.chars').toggleClass('show');
    })



});