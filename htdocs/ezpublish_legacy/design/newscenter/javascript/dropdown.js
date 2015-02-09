$( document ).ready(function() {
    $('a.disabled').click(function () {
        $('#'+$(this).attr('data-dropdown')).toggle();
        return false;
    });
});