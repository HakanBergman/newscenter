
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

  <div class="row widget-product">
  {* Loop through the categories *}
  {foreach $block.data_map.product_categories.content.relation_list as $category}
    {* Make sure a category exists *}
    {if $category}    
      {* Fetch Category List *}
      {def $category_list = fetch('content', 'list', hash('parent_node_id', $category.node_id, 'sort_by', array('name', true()) ))}              
      {* Fetch Main Node for this Category *}
      {def $main_node = fetch('content', 'node', hash('node_id', $category.node_id, 'sort_by', array('name', true()) ))}
      {* Print the name of the Category *}
	  <div class="{$main_node.data_map.background_color.data_text}">
		  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if}">
		  <h2 class="no-margin widget-padding-top">{$main_node.name|wash()}</h2>      
			{* Loop through the list in the category *}
			{def $counter = 0}
			{foreach $category_list as $list}  				  		                     
				  {* Fetch all products in the list *}
				  {def $products = fetch('content', 'list', hash('parent_node_id', $list.node_id, 'sort_by', array('name', true()) ))}
					{if $products}
					   {foreach $products as $product}
						<div class="{$class} container-padding-left container-padding-right"> 
						  <article>
							<h3><a class="{$main_node.data_map.link_color.data_text} font-size-product-vmin" href="{$product.url|ezurl('no', 'full')}" title="{$product.name} {$product.data_map.extra_attribute_one.data_text}">{$product.name|wash()}</a></h3>
							<div class="clearfix">
								<span class="pull-left">{$product.data_map.extra_attribute_one.data_text}</span>
								<span class="pull-right">{$product.data_map.extra_attribute_two.data_text}</span>
							</div>
							<div class="media">
								<a class="{$main_node.data_map.link_color.data_text}" href="{$product.url|ezurl('no', 'full')}" alt="{$product.name|wash()}" title="{$product.name|wash()}">
									<img class="img-responsive" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="{$product.name|wash()}">
								</a>
								<div class="media-body">								
									{attribute_view_gui attribute=$product.data_map.short_description}
								</div>
							</div>
						  </article>
						 </div>
						{set $counter = $counter|inc(1)}
						{def $end_count = $number_of_products|mul(2)}
							{if $counter|eq($end_count)}
								<div class="clearfix hidden">&nbsp;</div>
								{set $counter = 0}
							{/if}
						{undef $end_count}
						{/foreach}
					{/if}
				  {undef $products}  
			{/foreach}    
			{undef $counter}
		{undef $category_list $main_node}
		{/if}    
		</div>
	</div>
	<div class="clearfix hidden">&nbsp;</div>
  {/foreach}
  </div>

  {undef $number_of_products $class}
