/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        $.post("/webshop/updatebasket", function (data) {
            if (data == "Success") {
                alert('Uppdateringen genomförd.');
            }
        });
    });
});