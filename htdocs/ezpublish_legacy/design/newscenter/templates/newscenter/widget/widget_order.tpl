<div class="row widget-links">
  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
    <article>
		<h5 class="{$block.data_map.background_color.data_text} {$block.data_map.text_color.data_text} container-padding-top-05 container-padding-bottom-05">{$block.name|wash()}</h5>
		{switch match=$block.data_map.information.content.0}
			{case match=0}
			{/case}
			{case match=1}
			{/case}
			{case match=2}
				{* Fetch information from parent node *}
				{def $child_nodes = fetch('content', 'tree', hash('parent_node_id', $current_node.parent.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product')))}
					{if $child_nodes}
						<ul>
							{foreach $child_nodes as $child}
								<li>
									<form method="post" action="/content/action">
											<input type="hidden" name="TopLevelNode" value="{$child.node_id}" />
											<input type="hidden" name="ContentNodeID" value="{$child.node_id}" />
											<input type="hidden" name="ContentObjectID" value="{$child.contentobject_id}" />
											<input class="button" type="submit" name="ActionAddToBasket" value="Lägg till i kundvagnen" />
											<input class="button" type="submit" name="ActionAddToWishList" value="Lägg till i önskelistan" />
									</form>
									<a href="{$child.url|ezurl('no', 'full')}" alt="{$child.name}" class="float-right">{$child.name|wash()}</a>
								</li>
							{/foreach}
						</ul>
					{/if}
				{undef $child_nodes}
			{/case}
		{/switch}
    </article>
  </div>
</div>
