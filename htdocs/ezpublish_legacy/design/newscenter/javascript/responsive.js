/* Admin Sidebar Resize */
$(document).ready(function () {
    var $window = $(window);

    /* Make Sidebar Visible */
    $('#sidebar_admin').removeClass('hide');

    /* Responsive Sidebar */
    function resize() {
        if ($window.width() < 991) {
            return $('#admin_sidebar_dhc').removeClass('absolute');
        }
        $('#sidebar_admin').addClass('absolute').addClass('col-lg-2').removeClass('col-lg-12');
    }

    $window
        .resize(resize)
        .trigger('resize');
});
