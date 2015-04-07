$(document).ready(function (e) {
    $('.toggle-preview').on('click', function () {
        /* Verify if the Preview cookie exists */
        if (!$.cookie('preview')) {
            /* Create Preview Cookie */
            $.cookie('preview', '1', { expires: 365, path: '/' }); 
            $('.admin-panel').removeClass('hide');
        } else {
            if ($.cookie('preview') == 1) {
                $.cookie('preview', '0', { expires: 365, path: '/' });
                $('.admin-panel').addClass('hide');
            } else {
                $.cookie('preview', '1', { expires: 365, path: '/' });
                $('.admin-panel').removeClass('hide');
            }
        }        
    });
    if ($.cookie('preview') != 1) {
        $('.toggle-preview').prop('checked', true);
        $('.admin-panel').addClass('hide');        
    } else {
        $('.toggle-preview').prop('checked', false);
    }
});