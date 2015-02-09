$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */       
        $('.submenu').slideUp(200);

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).slideDown(400);

        /* Return false */
        return false;

    });
});