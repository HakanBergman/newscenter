$(document).ready(function () {
    $('.overlay').each(function () {
        if ($.cookie($(this).attr('id'))) {
            console.log('cookie exists');
        } else {
            $('#' + $(this).attr('id')).removeClass('hide');
            $('#overlay-content-' + $(this).attr('data-src')).removeClass('hide');
        }
    });
    $('button.overlay-btn').on('click', function () {
        $('#overlay-' + $(this).attr('data-src')).addClass('hide');
        $('#overlay-content-' + $(this).attr('data-src')).addClass('hide');
    });
});