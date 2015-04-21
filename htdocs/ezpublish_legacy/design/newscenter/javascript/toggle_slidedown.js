﻿$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        alert('clicked');
        if ( $($(this).attr('data-href')).is( ":hidden" ) ) {
            $( ".menu-slider" ).slideDown("slow");
        } else {
            $($(this).attr('data-href')).slideUp('slow');
        }
    });
});