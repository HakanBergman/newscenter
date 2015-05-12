/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        var product_count = $('#product_number_' + product_id).val();
        $.post("/webshop/updatebasket", { itemCountList: product_count, itemIDList: product_id }, function (data) {
            if ($.trim(data)) {
                $('#form_number_' + product_id).hide();
            }
        });
    });
});