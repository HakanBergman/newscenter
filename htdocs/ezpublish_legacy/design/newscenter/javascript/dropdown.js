$( document ).ready(function() {
    $('a.disabled').click(function() {
        alert('test');
        return false;
    });
});