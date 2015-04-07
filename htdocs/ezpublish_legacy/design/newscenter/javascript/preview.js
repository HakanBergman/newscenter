$(document).ready(function (e) {
    $('.toggle-preview').on('click', function () {
        if ($.cookie('preview')) {
            alert('preview är nu av');
        } else {
            alert('preview är nu på')
        }
        $('.admin-panel-zone').remove();
    });    
});