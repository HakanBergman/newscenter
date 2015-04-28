$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {
        if (!$(this).parent().attr('data-open')) {
            /* Slide Down */
            /* Set background on active slider */
            setTimeout(function() { $(this).parent('li').addClass('bg-white'); alert("Hello"); }, 3000);
        }
    });
});