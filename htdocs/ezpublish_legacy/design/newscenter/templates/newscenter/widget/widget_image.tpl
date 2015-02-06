<div class="row thumbnail widget-margin-top widget-image">
	<div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if}">
		<article>
			<div class="media">
				{if $block.data_map.link.has_content}
					<a href="{$product.url|ezurl('no', 'full')}" title="{$block.name|wash()}">
				{/if}

				<img class="img-responsive" src="/{$block.data_map.image.content.original.full_path}" alt="{$block.data_map.image.content.alternative_text|wash()}">

				{if $block.data_map.link.has_content}
					</a>
				{/if}
			</div>
		</article>
	</div>
</div>