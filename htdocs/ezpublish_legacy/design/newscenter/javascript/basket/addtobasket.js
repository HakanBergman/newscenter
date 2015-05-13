﻿/* Add To Basket */
$(document).ready(function () {
    $('.addtobasket').on('click', function (e) {
        e.preventDefault();
        var product_id = $(this).attr('product-id');
        var product_price = $(this).attr('product-price');
        var quantity = $('.form_number_' + product_id + ' .quantity_number_' + product_id).val();
        $.post("/webshop/addtobasket", { quantity: quantity, objectid: product_id }, function (data) {
            if ($.trim(data) == 'Success') {
                $('.form_number_' + product_id + ' .quantity_number_' + product_id).val('1');
                $('.form_number_' + product_id).slideUp();
                $('.form_number_' + product_id).slideDown();
            }
        });
    });
});