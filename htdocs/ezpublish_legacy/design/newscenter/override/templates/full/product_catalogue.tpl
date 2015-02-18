<div class="container">
	<h2>{$node.name|wash()}</h2>
	{foreach $node.children as $category}
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h3>{$category.name|wash()}</h3>
				<div class="bg-longdrink-blue max-height-1">&nbsp;</div>
				{if $categoy.children}
					<ul>
						{foreach $category.children as $product}
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks/Mojito" title="Mojito ">Mojito</a></li>
						{/foreach}
					</ul>
				{/if}
			</div>
	{/foreach}	
</div>