(function ($) {
    var $window = $(window),
        $html = $('html');

    function resize() {
        if ($window.width() < 1450) {
            return $('#sidebar_admin').removeClass('absolute').removeClass('col-lg-2').addClass('col-lg-12');
        }

        $html.removeClass('mobile');
    }

    $window
        .resize(resize)
        .trigger('resize');
})(jQuery);