$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        slidedown_target = $(this).attr('data-href');
        if ($(slidedown_target).css('display') == 'none') {
            $('.' + $(this).attr('data-href')).slideDown('slow');
        }
    });
});