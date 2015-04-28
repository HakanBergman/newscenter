$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {
        alert($(this).parent().attr('data-open'));
    });
});