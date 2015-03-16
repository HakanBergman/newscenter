$(document).ready(function () {
    $('.overlay').each(function () {
        console.log($(this).attr('id'));
        if ($.cookie($(this).attr('id'))) {
            console.log('cookie exists');
        } else {
            $('#' + $(this).attr('id')).removeClass('hide');
            console.log('creating cookie');
        }
    });
});