$(document).ready(function (e) {
    $('.toggle-preview').on('click', function () {
        if ($.cookie('preview')) {
            alert('preview påslaget');
        }
        $('.admin-panel-zone').remove();
    });    
});