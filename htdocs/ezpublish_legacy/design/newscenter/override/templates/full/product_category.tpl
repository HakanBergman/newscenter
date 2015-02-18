<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
  {if $node.children}
    <div class="col-lg-12 col-md-12 col-sm-12">
      {foreach $node.children as $product}      								
					<ul>
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$node.url|ezurl('no', 'full')}" title="{$product.name|wash()}">{$product.name|wash()}</a></li>
					</ul>
      {/foreach}
    </div>
  {/if}
</div>