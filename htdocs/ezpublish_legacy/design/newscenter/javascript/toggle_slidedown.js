$(document).ready(function () {
    $('.slidedown').on('click', function (e) {
        e.preventDefault();
        alert($(this).attr('data-href'));
        if ($($(this).attr('data-href')).is(":visible")) {
            alert('test');
        }

        /*
        if $($(this).attr('data-href')).is(":hidden")) {
            alert('hit');
            $($(this).attr('data-href')).slideDown("slow");
        } else {
            $($(this).attr('data-href')).slideUp('slow');
        }
        */
    });
});