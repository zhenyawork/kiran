function notify (message, theme) {
    window.createNotification({
        closeOnClick: true,
        displayCloseButton: false,
        positionClass: 'nfc-top-right',
        showDuration: 3000,
        theme: theme || 'success'
    })({
        message: message
    });
}

$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.js-feedback').click(function () {
        var link = $(this);
        $('#feedback-modal-title').text(link.data('type'));
        $('#feedback-modal-type').val(link.data('type'));
        MicroModal.show('feedback-modal');
    });

    $('.js-form').submit(function (e) {
        e.preventDefault();
        var form = $(this);
        var modal = $(this).closest('.modal');

        $.post(form.attr('action'), form.serialize(), function () {
            notify(TRANSLATE.feedback_success);

            form.find('input, textarea').val('');

            if (modal.length) {
                MicroModal.close(modal.attr('id'));
            }
        }).fail(function () {
            notify(TRANSLATE.feedback_error, 'error');
        });
    });

    $('.submit-filter').click(function () {
        var form = $('.js-gfilter-form.active');
        $.post(form.attr('action'), form.serialize(), function (data) {
            $('.js-gfilter-results').html(data);
        }).fail(function () {
            notify('Не найдено', 'error');
        });
    });

    $('.js-product-tab').click(function () {
        var tabs = $(this).closest('.js-product-tabs');
        tabs.find('.js-product-tab._active').removeClass('_active');
        $(this).addClass('_active');
    });
});