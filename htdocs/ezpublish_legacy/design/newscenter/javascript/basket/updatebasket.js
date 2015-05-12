/* Make the Menu bar toggle */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        var product_price = $(this).attr('product-price');
        var product_count = $('#product_number_' + product_id).val();        
        $.post("/webshop/updatebasket", { itemCountList: product_count, itemIDList: product_id }, function (data) {
            if ($.trim(data)) {
                $('#container_id_' + product_id + ' .item_count').html(product_count);
                $('#container_id_' + product_id + ' .total_price').html(product_count * product_price);
                $.each($('#container_id_' + product_id + ' .total_price'), function() {
                    alert($(this).html());
                });
            }
        });
    });
});