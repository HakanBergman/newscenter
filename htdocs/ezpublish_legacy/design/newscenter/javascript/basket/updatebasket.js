/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        $.post("/webshop/updatebasket", { itemCountList: 3, itemIDList: 5 }, function (data) {
            alert(data);
            if (data == "Success") {
                alert('Uppdateringen genomförd.');
            }
        });
    });
});