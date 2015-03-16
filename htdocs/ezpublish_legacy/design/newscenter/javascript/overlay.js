$(document).ready(function () {
    $('.overlay').each(function () {
        console.log($(this).attr('id'));
        console.log($.cookies.get());
    });
});