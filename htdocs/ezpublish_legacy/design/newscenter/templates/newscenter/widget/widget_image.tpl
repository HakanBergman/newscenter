<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding container-margin-left-05">
  <div class="row widget-margin-top widget-image">
	  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
		  <article>
			  <div class="media">
				  {if $block.data_map.link.has_content}
					  <a href="{$product.url|ezurl('no', 'full')}" title="{$block.name|wash()}">
				  {/if}

				  <img class="img-responsive thumbnail no-margin" src="/{$block.data_map.image.content.original.full_path}" alt="{$block.data_map.image.content.alternative_text|wash()}" />

				  {if $block.data_map.link.has_content}
					  </a>
				  {/if}
			  </div>
		  </article>
	  </div>
  </div>
</div>