$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();

        $('.' + $(this).attr('data-reset') + ' a').each(function() {
            $(this).removeClass('active');
        });

        if ($('.'+$(this).attr('data-href')).css('display') == 'none') {
            $('.' + $(this).attr('id')).slideDown('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').show();
            $($(this)).addClass('active');
        } else {
            $('.' + $(this).attr('id')).slideUp('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').show();
            $($(this)).removeClass('active');
        }
    });
});