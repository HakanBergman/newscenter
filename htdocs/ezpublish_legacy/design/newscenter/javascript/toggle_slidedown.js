$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        slidedown_target = $(this).attr('data-href');
        if ($('.'+$(this).attr('data-href')).css('display') == 'none') {
            $('.' + $(this).attr('data-href')).slideDown('fast');
            kids = $($(this)).children();
            $('#'+$(this).attr('id')+' .glyphicon-menu-down').hide();
        } else {
            $('.' + $(this).attr('data-href')).slideUp('fast');
        }
    });
});