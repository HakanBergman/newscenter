{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
	<section id="section-{$zone.node_id}" class="container-padding-left container-padding-right">
		<div class="{if $zone.data_map.fullscreen.value}container-fluid{else}container{/if}">
			<div class="{$#zone_width} no-margin no-padding">
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					<div class="pull-right">
						<span class="glyphicon glyphicon-edit"></span>
						<span class="glyphicon glyphicon-remove"></span>
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
