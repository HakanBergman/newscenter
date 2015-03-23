$(document).ready(function () {
    $('.toggle').on('click', function (e) {
        e.preventDefault();
        $('.'+$(this).attr('data-href')).toggle();
    });
});