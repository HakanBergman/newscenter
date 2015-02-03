{def $product_categories = fetch('content', 'tree', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_category') ))}
	<h2>{$block.name|wash()|upcase()}</h2>
	{switch match=$product_categories|count()}
		{case match=3}
			{def $class = "col-lg-4"}
		{/case}
		{case match=4}
			{def $class = "col-lg-3"}
		{/case}
		{case}
			{def $class = "col-lg-12"}
		{/case}
	{/switch}
	{foreach $product_categories as $category}
		<div class="{$class}">
			<h3>{$category.name|wash()}</h3>	
			<div class="{$category.data_map.background_color.data_text}">&nbsp;</div>	
			<nav>
				<ul>
					<li><a href="#">En länk</a></li>
				</ul>
			</nav>
		</div>
	{/foreach}
{undef $product_categories $class}