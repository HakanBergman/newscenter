$(document).ready(function(e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.background-picked-color').length) {        
        $('.background-picked-color .color').html($('.background-saved-color').val());
        $('.background-picked-color').removeClass('hide');
    }
    /* Make something happen when we click a color */
    $('.colors .color').on('click', function (e) {
        alert('du klickade på en färg');
    });
});