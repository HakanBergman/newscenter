<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
	{foreach $node.children as $product}
			<div class="col-lg-12 col-md-12 col-sm-12">				
				{if $node.children}
					<ul>
						{foreach $category.children as $product}
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$product.url|ezurl('no', 'full')}" title="{$product.name|wash()}">{$product.name|wash()}</a></li>
						{/foreach}
					</ul>
				{/if}
			</div>
	{/foreach}	
</div>