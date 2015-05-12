/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        alert('test');
        e.preventDefault();
        $.post("/webshop/updatebasket", function (data) {
            alert("Data Loaded: " + data);
        });
    });
});