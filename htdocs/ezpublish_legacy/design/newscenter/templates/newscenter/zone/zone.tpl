{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
	<section id="section-{$zone.node_id} container-padding-left container-padding-right">
		<div class="{if $zone.data_map.fullscreen.value}container-fluid{else}container{/if}">
			<div class="{$#zone_width} no-margin no-padding">
				{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id))}
				{if $blocks}
					{foreach $blocks as $block}
						INKLUDERAR BLOCK
						{$block.class_identifier}
						{def $included_file = concat('design:newscenter/widget/', $block.class_identifier, '.tpl')}
							{include uri=$included_file block=$block}
						{undef $included_file}
					{/foreach}
				{/if}
			</div>
		</div>
	</section>
