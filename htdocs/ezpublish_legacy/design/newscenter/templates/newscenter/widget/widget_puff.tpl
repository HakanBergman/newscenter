<div class="row widget-image">
	<article>
		<div class="media">
			{if $block.data_map.link.has_content}
				<a href="{$product.url|ezurl('no', 'full')}" title="{$block.name|wash()}">
			{/if}
			  <img class="img-responsive thumbnail no-margin" src="/{$block.data_map.image.content.original.full_path}" alt="{$block.data_map.image.content.alternative_text|wash()}" />
        {attribute_view_gui attribute=$block.data_map.body}
			{if $block.data_map.link.has_content}
				</a>
			{/if}      
		</div>
	</article>
</div>

