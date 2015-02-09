$( document ).ready(function() {
    $('a.disabled').click(function() {
        alert($(this).attr('data-dropdown'));
        return false;
    });
});