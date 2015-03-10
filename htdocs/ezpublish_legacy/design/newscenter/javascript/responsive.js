(function ($) {
    var $window = $(window),
        $html = $('html');

    function resize() {
        if ($window.width() < 514) {
            return $('#sidebar_admin').removeClass('absolute');
        }

        $html.removeClass('mobile');
    }

    $window
        .resize(resize)
        .trigger('resize');
})(jQuery);