$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */       
        $('.submenu').slideUp(400);

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).slideDown(800);

        /* Return false */
        return false;

    });
});