/* Admin Bar Resize */
$(document).ready(function () {
    var $window = $(window);

    /* Responsive Bar */
    function resize() {
        if ($window.width() < 991) {
            return $('#admin_sidebar_dhc').removeClass('absolute');
        }
        $('#admin_sidebar_dhc').addClass('absolute');
    }

    $window
        .resize(resize)
        .trigger('resize');
});
