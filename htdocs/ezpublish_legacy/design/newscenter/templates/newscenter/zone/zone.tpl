{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

<div class="{$#zone_width} no-margin no-padding{if $zone.data_map.background_color.has_content} {$zone.data_map.background_color.data_text}{/if}">
	{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id, 'sort_by', array('priority', true()) ))}
		{if $blocks}
			{foreach $blocks as $block}
				{def $included_file = concat('design:newscenter/widget/', $block.class_identifier, '.tpl')}
					{*include uri=$included_file block=$block*}
				{undef $included_file}
			{/foreach}
		{/if}
	{undef $blocks}
</div>