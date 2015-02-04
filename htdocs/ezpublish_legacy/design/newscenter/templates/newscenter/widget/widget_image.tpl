<div class="row thumbnail widget-margin-top widget-product">
	<div class="{$main_node.data_map.background_color.data_text}">	
		<div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if}">
		  <div class="{$class} container-padding-left container-padding-right"> 
				<article>
					<div class="media">
						<a class="{$main_node.data_map.link_color.data_text}" href="{$product.url|ezurl('no', 'full')}" alt="{$product.name|wash()}" title="{$product.name|wash()}">
							<img class="img-responsive" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="{$product.name|wash()}">
						</a>
					</div>
				</article>
			</div>
		</div>
	</div>
</div>