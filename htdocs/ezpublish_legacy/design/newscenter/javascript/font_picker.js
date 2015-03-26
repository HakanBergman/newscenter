﻿$(document).ready(function (e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.font-family-saved').length) {
        alert($('.font-family-saved input').val());
    }
    $('.fonts .font-size').on('click', function (e) {
        e.preventDefault();
        var font_size = classtosize($(this).attr('data-class'));
        var font_size_class = $(this).attr('data-class');
        $('.font-size-picked').html(font_size);
        $('.font-family span').each(function (index, value) {
            $(this).removeClass('font-size-22-px').removeClass('font-size-20-px').removeClas('font-size-18-px').removeClass('font-size-16-px').removeClass('font-size-14-px');
            $(this).addClass(font_size_class);
        });
    });
});

function classtosize(input_class) {
    switch (input_class) {
        case "font-size-22-px":
            return "22 pixlar";
        break;
        case "font-size-20-px":
            return "20 pixlar";
        break;
        case "font-size-18-px":
            return "18 pixlar";
        break;
        case "font-size-16-px":
            return "16 pixlar";
        break;
        case "font-size-14-px":
            return "14 pixlar";
        break;
    }
}
