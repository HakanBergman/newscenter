
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

  <div class="row bg-white widget-margin-top widget-product">
  {* Loop through the categories *}
  {foreach $block.data_map.product_categories.content.relation_list as $category}
    {* Make sure a category exists *}
    {if $category}    
      {* Fetch Category List *}
      {def $category_list = fetch('content', 'list', hash('parent_node_id', $category.node_id))}              
      {* Fetch Main Node for this Category *}
      {def $main_node = fetch('content', 'node', hash('node_id', $category.node_id))}
      {* Print the name of the Category *}
      <h3>{$main_node.name|wash()}</h3>      
        {* Loop through the list in the category *}
        {foreach $category_list as $list}                     
              {* Fetch all products in the list *}
              {def $products = fetch('content', 'list', hash('parent_node_id', $list.node_id))}
                {if $products}
                   {foreach $products as $product}
                    <div class="{$class} {$main_node.data_map.color.data_text} widget-padding-top product-number-{$number}"> 
                      <div class="media">
                        <a href="{$product.url|ezurl('no', 'full')}" alt="{$product.name|wash()}" title="{$product.name|wash()}"><img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="{$product.name|wash()}"></a>
                          <div class="media-body">
                            <h4 class="media-heading"><small><a href="{$product.url|ezurl('no', 'full')}" alt="{$product.name|wash()}" title="{$product.name|wash()}">{$product.name|wash()}</a></small></h4>
                            {attribute_view_gui attribute=$product.data_map.short_description}
                          </div>
                        </div>
                     </div>
                    {/foreach}
                {/if}
              {undef $products}  
        {/foreach}    
    {undef $category_list $main_node}
    {/if}    
  {/foreach}
  </div>

  {undef $number_of_products $class}
