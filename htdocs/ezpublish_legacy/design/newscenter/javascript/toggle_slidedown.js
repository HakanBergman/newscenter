$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        slidedown_target = $(this).attr('data-href');
        if ($('.'+$(this).attr('data-href')).css('display') == 'none') {
            $('.' + $(this).attr('data-href')).slideDown();
        } else {
            $('.' + $(this).attr('data-href')).slideUp();
        }
    });
});