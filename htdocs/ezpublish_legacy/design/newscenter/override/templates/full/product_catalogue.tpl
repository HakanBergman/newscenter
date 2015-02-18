<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
	{foreach $node.children as $category}
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h3><a href="{$category.url|ezurl('no', 'full')}" title="{$category.name|wash()}">{$category.name|wash()}</a></h3>
				<div class="{$category.data_map.background_color.data_text} max-height-1">&nbsp;</div>
				{if $category.children}
					<ul>
						{foreach $category.children as $product}
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$product.url|ezurl('no', 'full')}" title="{$product.name|wash()}">{$product.name|wash()}</a></li>
						{/foreach}
					</ul>
				{/if}
			</div>
	{/foreach}	
</div>