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
  {foreach $block.data_map.product_categories.content.relation_list as $category}
    {if $category}    
      {def $category_list = fetch('content', 'list', hash('parent_node_id', $category.node_id))}              
      {def $main_node = fetch('content', 'node', hash('parent_node_id', $category.node_id))}
      {$main_node.name|wash()}
        {foreach $category_list as $list}
          <div class="{$class} widget product-number-{$number}">
            <h4>{$list.object.parent_node.name|wash()} h4</h4>
          </div>  
        {/if}
    {undef $category_list $main_node}
  {/if}    
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