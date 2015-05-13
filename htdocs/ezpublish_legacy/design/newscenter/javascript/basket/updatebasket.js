/* Update Basket */
$(document).ready(function () {
    $('.updatebasket').on('click', function(e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        var product_price = $(this).attr('product-price');
        var product_count = $('#product_number_' + product_id).val();
        if (product_count > 0 && product_id > 0) {
            $.post("/webshop/updatebasket", { itemCountList: product_count, itemIDList: product_id }, function (data) {
                if ($.trim(data)) {
                    $('#container_id_' + product_id + ' .item_count').html(product_count);
                    $('#container_id_' + product_id + ' .total_price').html(product_count * product_price);
                    var total_sum = parseInt(0);
                    $.each($('#basket .total_price'), function () {
                        total_sum += parseInt($(this).html());
                    });
                    $('#basket .total_sum_incl_vat').html(total_sum);
                    $('#basket .total_sum_excl_vat').html(Math.round(total_sum - (total_sum * 0.8)));
                }
            });
        }
    });
});