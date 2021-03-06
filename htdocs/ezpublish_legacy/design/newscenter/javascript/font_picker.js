﻿$(document).ready(function (e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.font-family-saved').length) {
        var font_family = classtofont($('.font-family-saved input').val());
        var font_size = classtosize($('.font-size-saved input').val());
        $('.font-family-current').html(font_family);
        $('.font-size-current').html(font_size);
    }
    $('.fonts .font-size').on('click', function (e) {
        e.preventDefault();
        var font_size = classtosize($(this).attr('data-class'));
        var font_size_class = $(this).attr('data-class');
        $('.font-size-picked').html(font_size);
        $('.font-family span').each(function (index, value) {
            $(this).removeClass('font-size-22-px font-size-20-px font-size-18-px font-size-16-px font-size-14-px');
            $(this).addClass(font_size_class);
            $('.font-size-saved input').val(font_size_class);
        });
    });
    $('.fonts .font-family').on('click', function (e) {
        e.preventDefault();
        var font_family = classtofont($(this).attr('data-class'));
        $('.font-family-picked').html(font_family);
        $('.font-family-saved input').val($(this).attr('data-class'));
    });
});

function classtofont(input_class) {
    switch (input_class) {
        case "font-family-arial":
            return "Arial";
        break;
        case "font-family-bookman-old":
            return "Bookman Old";
        break;
        case "font-family-comic-sans":
            return "Comic Sans";
        break;
        case "font-family-georgia":
            return "Georgia";
        break;
        case "font-family-tahoma":
            return "Tahoma";
        break;
        case "font-family-times-new-roman":
            return "Times New Roman";
        break;
        case "font-family-palatino":
            return "Palatino";
        break;
        case "font-family-verdana":
            return "Verdana";
        break;
    }
}

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
