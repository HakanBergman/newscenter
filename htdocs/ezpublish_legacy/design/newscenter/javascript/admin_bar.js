/* Make the Menu bar toggle */
$( document ).ready(function() {
    $('.toggle-admin-bar').click(function () {
        $('.admin-bar').toggleClass('hide');
    });
});