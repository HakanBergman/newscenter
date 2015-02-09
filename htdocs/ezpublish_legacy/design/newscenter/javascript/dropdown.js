$( document ).ready(function() {
    $('a.disabled').click(function () {

        /* Hide all submenus */       
        $('.submenu').slideUp(200);
        $('nav ul li a').removeClass('active');

        /* Show this submenu */
        $(this).addClass('active');
        $('#' + $(this).attr('data-dropdown')).slideDown(400);

        /* Return false */
        return false;

    });
});