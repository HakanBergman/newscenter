$(document).ready(function(e) {

    /* Background Color */
    /* Make something happen when we click a color */
    $('.colors .background-color').on('click', function (e) {
        $('.background-picked-color .hex').html($(this).attr('data-hex'));
        if ($('.background_color').length) { $('.background_color').val($(this).attr('data-color')); }
    });
    $('.colors .background-logotype-color').on('click', function (e) {
        $('.background-logotype-picked-color .hex').html($(this).attr('data-hex'));
        if ($('.background_color_logotype').length) { $('.background_color_logotype').val($(this).attr('data-color')); }
    });
    /* Check if we are in edit mode and can pick a color */
    if ($('.background-picked-color').length) {
        var current_background_color = colortohex($('.background-saved-color input').val());
        $('.background-picked-color .color').html(current_background_color);
        $('.background-picked-color').removeClass('hide');
    }
    /* Check if we are in edit mode and can pick a color */
    if ($('.background-logotype-picked-color').length) {
        var current_background_color = colortohex($('.background-saved-color input').val());
        $('.background-logotype-picked-color .color').html(current_background_color);
        $('.background-logotype-picked-color').removeClass('hide');
    }

    /* Text Color */
    /* Make something happen when we click a color */
    $('.colors .text-color').on('click', function (e) {
        $('.text-picked-color .hex').html($(this).attr('data-hex'));
        $('.text_color').val($(this).attr('data-color'));
    });
    if ($('.text-saved-color').length) {
        var current_text_color = colortohex($('.text-saved-color input').val());
        $('.text-picked-color .color').html(current_text_color);
        $('.text-picked-color').removeClass('hide');
    }

});

function colortohex(value) {
    switch(value) {
        case "bg-black":
            return "#000";
        break;
        case "bg-beer-brown":
            return "#DE910b";
        break;
        case "bg-granate":
            return "#570900";
        break;
        case "bg-dynamite-orange":
            return "#DE910b";
        break;
        case "bg-grey":
            return "#EEE";
        break;
        case "bg-longdrink-blue":
            return "#4BC6D1";
        break;
        case "bg-tidningen-se":
            return "#004389";
        break; 
        case "bg-white":
            return "#FFF";
        break;
        case "text-color-black":
            return "#000";
        break;
    }
}