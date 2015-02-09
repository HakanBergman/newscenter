$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */       
        $('.submenu').stop().animate({ opacity: 0 }, "slow");
        $('.submenu').slideUp('slow');

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).stop().animate({ opacity: 1 }, "slow");
        $('#' + $(this).attr('data-dropdown')).slideDown('fast');

        /* Return false */
        return false;

    });
});