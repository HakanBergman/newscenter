$(document).ready(function () {
    $('.overlay').each(function () {
        console.log($(this).attr('data-src'));
        if ($.cookie($(this).attr('id'))) {
            console.log('cookie exists');
        } else {
            $('#' + $(this).attr('id')).removeClass('hide');
            $('#overlay-content-' + $(this).attr('data-src')).removeClass('hide');
            console.log('creating cookie');
        }
    });
});