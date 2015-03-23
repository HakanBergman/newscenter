$(document).ready(function () {
    $('.toggle').on('click', function (e) {
        e.preventDefault();
        alert($(this).attr('data-href'));
    });
});