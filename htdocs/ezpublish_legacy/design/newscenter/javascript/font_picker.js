$(document).ready(function (e) {
    /* Check if we are in edit mode and can pick a color */
    if ($('.font-family-saved').length) {
        alert($('.font-family-saved input').val());
    }
    $('.fonts .font-size').on('click', function (e) {
        e.preventDefault();
        alert($(this).attr('class'));
    });
});
