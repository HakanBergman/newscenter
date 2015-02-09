$( document ).ready(function() {
    $('a.disabled').click(function () {
        $('#'+$(this).attr('data-dropdown')).toggle();
        alert($(this).attr('data-dropdown'));
        return false;
    });
});