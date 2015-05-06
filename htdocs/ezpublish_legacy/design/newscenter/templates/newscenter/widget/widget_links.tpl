<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding container-margin-left-05">
  <div class="row widget-margin-top widget-links">
	  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
		  <article>
				<h4 class="text-center {$block.data_map.background_color.data_text} {$block.data_map.text_color.data_text} container-padding-top-05 container-padding-bottom-05">{$block.name|wash()}</h4>
				<div class="container-margin-left container-padding-right container-padding-left float-right">
					<form action="/content/action" method="post">
						<input type="hidden" value="widget_link" name="ClassIdentifier">
						<input type="hidden" class="input-zone-id" value="{$block.node_id}" name="NodeID"> 
						<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
						<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-plus"></span></button>										
					</form>
				</div>
				{if $block.data_map.show_children.value}
					hit
					{def $child_nodes = fetch('content', 'list', hash('parent_node_id', $block.node_id))}
						{if $child_nodes}
							<ul>
								{foreach $child_nodes as $child}
									<li><a href="{$child.url|ezurl('no', 'full')} alt="{$child.name}">{$child.name|wash()}</a></li>
								{/foreach}
							</ul>
					{undef $child_nodes}
				{/if}
		  </article>
	  </div>
  </div>
</div>