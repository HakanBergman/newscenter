﻿$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        if ($($(this).attr('data-href')).is(":visible")) {
            $('.' + $(this).attr('data-href')).slideUp('slow');
        } else {
            $('.'+$(this).attr('data-href')).slideDown('slow');
        }

        /*
        if $($(this).attr('data-href')).is(":hidden")) {
            alert('hit');
            $($(this).attr('data-href')).slideDown("slow");
        } else {
            $($(this).attr('data-href')).slideUp('slow');
        }
        */
    });
});