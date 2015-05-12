/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        alert($('#product_number_' + product_id).val());
        $.post("/webshop/updatebasket", { itemCountList: 3, itemIDList: product_id }, function (data) {
            if (data == "Success") {
                alert('Uppdateringen genomförd.');
            }
        });
    });
});