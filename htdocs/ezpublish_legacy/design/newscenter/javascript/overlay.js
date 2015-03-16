$(document).ready(function () {
    $('.overlay').each(function () {
        if ($.cookie($(this).attr('id'))) {
            $('#' + $(this).attr('id')).remove();
            $('#overlay-content-' + $(this).attr('data-src')).remove();
        } else {
            $('#' + $(this).attr('id')).removeClass('hide');
            $('#overlay-content-' + $(this).attr('data-src')).removeClass('hide');
        }
    });
    $('button.overlay-btn').on('click', function () {
        $('#overlay-' + $(this).attr('data-src')).addClass('hide');
        $('#overlay-content-' + $(this).attr('data-src')).addClass('hide');
        $.cookie('overlay-' + $(this).attr('data-src'), 'active', { expires: 1, path: '/' });
    });
});