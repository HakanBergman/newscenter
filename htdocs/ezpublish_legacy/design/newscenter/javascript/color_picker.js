$(document).ready(function () {
    if ($('.picked-color').length) { alert('Found with Length'); }
    $('.colors .color').on('click', function (e) {
        alert('du klickade på en färg');
    });
});