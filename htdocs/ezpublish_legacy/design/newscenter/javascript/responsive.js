(function ($) {
    var $window = $(window),
        $html = $('html');

    if ($window.width() < 1700) {
        $('#sidebar_admin').removeClass('absolute').removeClass('col-lg-2').addClass('col-lg-12');
        alert("test");
    }

    function resize() {
        if ($window.width() < 1700) {
            return $('#sidebar_admin').removeClass('absolute').removeClass('col-lg-2').addClass('col-lg-12');
        }
        $('#sidebar_admin').addClass('absolute').addClass('col-lg-2').removeClass('col-lg-12');
    }

    $window
        .resize(resize)
        .trigger('resize');
})(jQuery);