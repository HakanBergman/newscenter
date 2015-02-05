<div class="row thumbnail widget-margin-top widget-product">
	<div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if}">
		<article>
			<div class="media">
				<a href="{$product.url|ezurl('no', 'full')}" title="{$block.name|wash()}">
					<img class="img-responsive" src="/{$block.data_map.image.content.original.full_path}" alt="{$block.data_map.image.content.alternative_text|wash()}">
				</a>
			</div>
		</article>
	</div>
</div>