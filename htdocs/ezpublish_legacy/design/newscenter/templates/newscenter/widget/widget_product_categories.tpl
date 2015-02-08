{def $product_categories = fetch('content', 'tree', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_category'), 'sort_by', array('name', true()) ))}
	<h2>{$block.name|wash()|upcase()}</h2>
	{switch match=$product_categories|count()}
		{case match=3}
			{def $class = "col-lg-4 col-md-4 col-sm-4 col-xs-4"}
		{/case}
		{case match=4}
			{def $class = "col-lg-3 col-md-3 col-sm-3 col-xs-3"}
		{/case}
		{case}
			{def $class = "col-lg-12"}
		{/case}
	{/switch}
	{foreach $product_categories as $category}
		<div class="{$class}">
			<h3>{$category.name|wash()}</h3>	
			<div class="{$category.data_map.background_color.data_text}">&nbsp;</div>	
			{def $products = fetch('content', 'list', hash('parent_node_id', $category.node_id))}
			{if $products|count()}				
				<nav>
					<ul>
						{foreach $products as $product}
							<li><a href="{$product.url|ezurl('no', 'full')}" title="{$product.name} {$product.data_map.extra_attribute_data_text}">{$product.name|wash()}</a></li>
						{/foreach}
					</ul>
				</nav>
			{/if}
			{undef $products}
		</div>
	{/foreach}
{undef $product_categories $class}