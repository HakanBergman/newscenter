{def $template_node = fetch('content', 'node', hash('node_id', $node.data_map.template.content.relation_list.0.node_id))}
	{if $template_node}
		{def $template = concat('design:newscenter/templates/full/', $template_node.data_map.template_folder.data_text, '/', $template_node.data_map.template.data_text)}
			{include uri=$template}
		{undef $template}
	{/if}
{undef $template_node}