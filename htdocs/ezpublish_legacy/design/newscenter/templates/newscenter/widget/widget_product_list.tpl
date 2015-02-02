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

  {* Loop through the categories *}
  {foreach $block.data_map.product_categories.content.relation_list as $category}
    {* Make sure a category exists *}
    {if $category}    
      {* Fetch Category List *}
      {def $category_list = fetch('content', 'list', hash('parent_node_id', $category.node_id))}              
      {* Fetch Main Node for this Category *}
      {def $main_node = fetch('content', 'node', hash('node_id', $category.node_id))}
      {* Print the name of the Category *}
      <h4>{$main_node.name|wash()}</h4>
        {* Loop through the list in the category *}
        {foreach $category_list as $list}                     
              {* Fetch all products in the list *}
              {def $products = fetch('content', 'list', hash('parent_node_id', $list.node_id))}
                {if $products}
                   {foreach $products as $product}
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
                   {/foreach}
                {/if}
              {undef $products}  
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