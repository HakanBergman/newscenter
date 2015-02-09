$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */       
        $('.submenu').slideUp('slow');

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).stop().animate({ opacity: 1 }, "slow");
        $('#' + $(this).attr('data-dropdown')).slideDown('slow');

        /* Return false */
        return false;

    });
});