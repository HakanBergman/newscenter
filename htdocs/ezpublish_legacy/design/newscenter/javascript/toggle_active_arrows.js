$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {

        /* Treat all as false */
        $('.cbp-hsmenu li a').each(function () {
            $(this).removeClass('active');
            $('.glyphicon-menu-up').hide();
            $('.glyphicon-menu-down').show();
        });

        if (!$(this).parent().attr('data-open')) {
            /* Slide Down */
            /* Set background on active slider */
            $(this).addClass('active');
            $('.glyphicon-menu-down').hide();
            $('.glyphicon-menu-up').show();
        } else {
            /* Slide Up */
            /* Remove Active Slider */
            $(this).removeClass('active');
        }
    });
});