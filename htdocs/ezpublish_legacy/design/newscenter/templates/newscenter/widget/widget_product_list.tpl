<div class="row bg-white widget widget-product">
  {def $number_of_products = $block.data_map.shown_products_per_row.content.0}
  {set $number_of_products = $block.data_map.shown_products_per_row.class_content.options.$number_of_products.name}
  {switch match = $number_of_products}
  {case match=4}
  {def $class = "col-lg-3"}
  {/case}
  {case match=6}
  {def $class = "col-lg-2"}
  {/case}
  {/switch}
  {$block.data_map|attribute(show, 1)}
  {$block.data_map.product_categories.content.relation_list.0|attribute(show, 1)}
  {foreach $block.data_map.product_categories.content.relation_list as $category}
    <div class="{$class} widget product-number-{$number}">
      <h4>{$category.name|wash()}</h4>
    </div>
  {/foreach}
  {for 1 to $number_of_products as $number}
  <div class="{$class} widget product-number-{$number}">
        <div class="media">
          <a href="#" alt="" title=""><img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener"></a>
            <div class="media-body">
              <h4 class="media-heading">
                   <small>
                     <a href="#" alt="" title="">Cēsu Pilsener</a>
                   </small>
              </h4>
              text
            </div>
          </div>
      </div>
  {/for}
  {undef $number_of_products $class}
</div>