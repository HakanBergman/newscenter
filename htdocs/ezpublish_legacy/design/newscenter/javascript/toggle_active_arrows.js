$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {

        $('.cbp-hsmenu li a').each(function () {
            $(this).removeClass('active');
        });

        if (!$(this).parent().attr('data-open')) {
            /* Slide Down */
            /* Set background on active slider */
            $(this).addClass('active');
        } else {
            /* Slide Up */
            /* Remove Active Slider */
            $(this).removeClass('active');
        }
    });
});