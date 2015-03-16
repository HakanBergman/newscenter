$(document).ready(function () {
    $('.overlay').each(function () {
        console.log($(this).attr('id'));
        $.cookie($(this).attr('id'));
    });
});