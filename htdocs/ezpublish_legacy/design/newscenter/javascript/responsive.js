(function ($) {
    var $window = $(window),
        $html = $('html');

    function resize() {
        if ($window.width() < 514) {
            return $html.addClass('mobile');
        }

        $html.removeClass('mobile');
    }

    $window
        .resize(resize)
        .trigger('resize');
})(jQuery);