{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
	<section id="section-{$zone.node_id}" class="container-padding-left container-padding-right">
		<div class="{if $zone.data_map.fullscreen.value}container-fluid{else}container{/if}">
			<div class="{$#zone_width} no-margin no-padding">
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					<div class="pull-right">
						<a href="/content/edit/{$zone.contentobject_id}" title="Redigera zonen {$zone.name|wash()}" class="btn btn-info glyphicon glyphicon-edit"></a>
						<form method="post" action="/content/action" class="float-right">
							<input type="hidden" name="TopLevelNode" value="{$zone.node_id}">
							<input type="hidden" name="ContentNodeID" value="{$zone.node_id}">
							<input type="hidden" name="ContentObjectID" value="{$zone.contentobject_id}">							
							<button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
						</form>
					</div>
				{/if}
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id, 'sort_by', array('priority', true()) ))}
						{if $blocks}
							{foreach $blocks as $block}
								{def $included_file = concat('design:newscenter/widget/', $block.class_identifier, '.tpl')}
									{include uri=$included_file block=$block}
								{undef $included_file}
							{/foreach}
						{/if}
					{undef $blocks}
				{/if}
			</div>
		</div>
	</section>
