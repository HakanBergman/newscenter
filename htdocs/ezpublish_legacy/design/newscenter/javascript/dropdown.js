﻿$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */
        $('.submenu').stop().animate({ opacity: 0 }, "slow");
        $('.submenu').hide();

        /* Show this submenu */
        $('#' + $(this).attr('data-dropdown')).show();
        $(this).stop().animate({ opacity: 1 }, "slow");        

        /* Return false */
        return false;

    });
});