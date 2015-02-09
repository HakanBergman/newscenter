$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */
        $('.submenu').hide('fast');

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).show('fast');

        /* Return false */
        return false;

    });
});