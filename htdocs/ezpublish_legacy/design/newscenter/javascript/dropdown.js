$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */
        $('.submenu').fadeOut('slow');

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).fadeIn('slow');

        /* Return false */
        return false;

    });
});