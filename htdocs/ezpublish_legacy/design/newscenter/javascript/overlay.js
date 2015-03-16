$(document).ready(function () {
    $('.overlay').each(function () {
        console.log($(this).attr('id'));
        if (jQuery.data(document.body, "overlay").value) {
            console.log('value');
        } else {
            console.log('no value');
        }
    });
});