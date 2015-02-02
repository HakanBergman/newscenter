{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
	<section id="section-{$zone.node_id}">
		<div class="container">
			<div class="{$#zone_width}">
				{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id))}
				{if $blocks}
					{foreach $blocks as $block}
						{include uri="concat('design:newscenter/widget/', $block.class_identifier, '.tpl')"}
					{/foreach}
				{/if}
			</div>
		</div>
	</section>
