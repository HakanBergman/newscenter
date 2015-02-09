{def $product_categories = fetch('content', 'tree', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_category'), 'sort_by', array('name', true()) ))}
	<h2 class="{$block.data_map.text_color.data_text}">{$block.name|wash()|upcase()}</h2> asdasd
	{$block.data_map|attribute(show, 1)}
	{switch match=$product_categories|count()}
		{case match=3}
			{def $class = "col-lg-4 col-md-4 col-sm-4"}
		{/case}
		{case match=4}
			{def $class = "col-lg-3 col-md-3 col-sm-3"}
		{/case}
		{case}
			{def $class = "col-lg-12"}
		{/case}
	{/switch}
	{foreach $product_categories as $category}
		<div class="{$class}">
			<h3 class="{$#company.data_map.link_color_menu_mouseover.data_text}"><a href="{$category.url|ezurl('no', 'full')}" title="{$category.name|wash()}">{$category.name|wash()}</a></h3>	
			<div class="{$category.data_map.background_color.data_text} max-height-1">&nbsp;</div>	
			{def $products = fetch('content', 'list', hash('parent_node_id', $category.node_id))}
			{if $products|count()}				
				<nav>
					<ul>
						{foreach $products as $product}
							<li class="{$#company.data_map.link_color_menu_mouseover.data_text}"><a class="font-weight-normal" href="{$product.url|ezurl('no', 'full')}" title="{$product.name} {$product.data_map.extra_attribute_data_text}">{$product.name|wash()}</a></li>
						{/foreach}
					</ul>
				</nav>
			{/if}
			{undef $products}
		</div>
	{/foreach}
{undef $product_categories $class}