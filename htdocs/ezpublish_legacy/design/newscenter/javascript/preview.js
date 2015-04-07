$(document).ready(function (e) {
    $('.toggle-preview').on('click', function () {
        if ($.cookie('preview')) {
            alert('preview är nu av');
        } else {
            alert('preview är nu på')
            alert($.cookie('preview'));
        }
        $('.admin-panel-zone').remove();
    });    
});