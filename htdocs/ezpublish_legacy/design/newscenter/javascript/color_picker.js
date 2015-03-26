$(document).ready(function(e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.background-picked-color').length) {
        var current_background_color = colortohex($('.background-saved-color input').val());
        $('.background-picked-color .color').html(current_background_color);
        $('.background-picked-color').removeClass('hide');        
    }
    if ($('.text-saved-color').length) {
        var current_text_color = colortohex($('.text-saved-color input').val());
        $('.text-picked-color .color').html(current_text_color);
        $('.text-picked-color').removeClass('hide');
    }
    /* Make something happen when we click a color */
    $('.colors .text-color').on('click', function (e) {
        $('.text-picked-color .hex').html($(this).attr('data-hex'));
        $('.text_color').val($(this).attr('data-color'));
    });
});

function colortohex(value) {
    switch(value) {
        case "bg-black":
            return "#000";
        break;
        case "text-color-black":
            return "#000";
        break;
        case "bg-white":
            return "#FFF";
        break;
    }
}