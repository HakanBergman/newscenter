$(document).ready(function(e) {

    /* Make something happen when we click a color */
    $('.colors .background-color').on('click', function (e) {
        $('.background-picked-color .hex').html($(this).attr('data-hex'));
        if ($('.background_color').length) { $('.background_color').val($(this).attr('data-color')); }
    });
    $('.colors .background-logotype-color').on('click', function (e) {
        $('.background-logotype-picked-color .hex').html($(this).attr('data-hex'));
        if ($('.background_color_logotype').length) { $('.background_color_logotype').val($(this).attr('data-color')); }
    });
    $('.colors .link-color').on('click', function (e) {
        $('.link-color-picked-color .hex').html($(this).attr('data-hex'));
        if ($('.link_color').length) { $('.link_color').val($(this).attr('data-color')); }
    });

    /* Check if we are in edit mode and can pick a color */
    if ($('.background-picked-color').length) {
        var current_background_color = colortohex($('.background-saved-color input').val());
        $('.background-picked-color .color').html(current_background_color);
        $('.background-picked-color').removeClass('hide');
    }

    if ($('.background-logotype-picked-color').length) {
        var current_background_color = colortohex($('.background-logotype-saved-color input').val());
        $('.background-logotype-picked-color .color').html(current_background_color);
        $('.background-logotype-picked-color').removeClass('hide');
    }

    if ($('.link-color-picked-color').length) {
        var current_background_color = colortohex($('.link-color-saved-color input').val());
        $('.link-color-picked-color .color').html(current_background_color);
        $('.link-color-picked-color').removeClass('hide');
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