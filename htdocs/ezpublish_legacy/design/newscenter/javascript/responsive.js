/* Admin Sidebar Resize */
$(document).ready(function () {
    var $window = $(window);

    /* Make Sidebar Visible */
    $('#sidebar_admin').removeClass('hide');

    /* Responsive Sidebar */
    function resize() {
        if ($window.width() < 1700) {
            return $('#sidebar_admin').removeClass('absolute').removeClass('col-lg-2').addClass('col-lg-12');
        }
        $('#sidebar_admin').addClass('absolute').addClass('col-lg-2').removeClass('col-lg-12');
    }

    $window
        .resize(resize)
        .trigger('resize');
});
