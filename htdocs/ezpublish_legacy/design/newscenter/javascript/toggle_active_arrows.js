$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {
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