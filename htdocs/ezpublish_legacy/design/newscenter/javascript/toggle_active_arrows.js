﻿$(document).ready(function () {
    $('.cbp-hsmenu .slidedown').on('click', function (e) {

        /* Treat all as false */
        $('.cbp-hsmenu li a').each(function () {
            $(this).removeClass('active');
            $(this).removeClass($(this).attr('data-background'));
            $(this).addClass('no-background');
            $('.glyphicon-menu-up').addClass('hide');
            $('.glyphicon-menu-down').removeClass('hide');
        });

        if (!$(this).parent().attr('data-open')) {
            /* Slide Down */
            /* Set background on active slider */
            $(this).addClass('active');
            $(this).removeClass('no-background');
            $(this).addClass($(this).attr('data-background'));
            $('#' + $(this).attr('id') + ' .glyphicon-menu-down').addClass('hide');
            $('#' + $(this).attr('id') + ' .glyphicon-menu-up').removeClass('hide');
        } else {
            /* Slide Up */
            /* Remove Active Slider */
            $(this).removeClass('active');
        }
    });
});