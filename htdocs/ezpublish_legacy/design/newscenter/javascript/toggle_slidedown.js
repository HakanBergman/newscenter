$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();

        $('.' + $(this).attr('data-reset') + ' a').each(function () { $(this).removeClass('active'); $('.'+$(this).attr('id')).slideUp('fast'); });
        $('.' + $(this).attr('data-reset') + ' a .glyphicon-menu-down').each(function () { $(this).show(); });
        $('.' + $(this).attr('data-reset') + ' a .glyphicon-menu-up').each(function () { $(this).hide(); });

        if ($('.'+$(this).attr('id')).css('display') == 'none') {
            $('.' + $(this).attr('id')).slideDown('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').show();
            $($(this)).addClass('active');
            $($(this)).parent().addClass('bg-white');
        } else {
            $('.' + $(this).attr('id')).slideUp('fast');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').hide();
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').show();
            $($(this)).removeClass('active');
        }
    });
});