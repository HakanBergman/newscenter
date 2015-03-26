$(document).ready(function(e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.background-picked-color').length) {
        var current_color = colortohex($('.background-saved-color input').val());
        $('.background-picked-color .color').html(current_color);
        $('.background-picked-color').removeClass('hide');        
    }
    /* Make something happen when we click a color */
    $('.colors .background-color').on('click', function (e) {
        $('.background-picked-color .hex').html($(this).attr('data-hex'));
        $('.background_color').val($(this).attr('data-color'));
    });
});

function colortohex(value) {
    switch(value) {
        case "bg-black":
            return "#000";
        break;
        case "bg-white":
            return "#FFF";
        break;
    }
}