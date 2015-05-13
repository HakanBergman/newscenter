/* Add To Basket */
$(document).ready(function () {
    $('.addtobasket').on('click', function (e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        var product_price = $(this).attr('product-price');
        var quantity = $('.form_number_' + product_id + ' .quantity_number_' + product_id).val();
        alert(quantity);
        $('.cart_total_items').html(parseInt(current_items) + 1);
        $.post("/webshop/addtobasket", { quantity: product_count, objectid: product_id }, function (data) {
            alert(data);
        });
    });
});