$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();

        $('.' + $(this).attr('data-reset') + ' a').each(function() {
            $(this).hide();
        });

        if ($('.'+$(this).attr('data-href')).css('display') == 'none') {
            $('.' + $(this).attr('data-href')).slideDown('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').show();
            $($(this)).addClass('active');
        } else {
            $('.' + $(this).attr('data-href')).slideUp('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').show();
            $($(this)).removeClass('active');
        }
    });
});