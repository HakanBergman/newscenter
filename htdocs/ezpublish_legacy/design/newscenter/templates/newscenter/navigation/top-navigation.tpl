{def $menusettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
	{if $menusettings.0.data_map.menu_plugin.content.relation_list.0.node_id}
		{def $menu = fetch('content', 'node', hash('node_id', $menusettings.0.data_map.menu_plugin.content.relation_list.0.node_id))}
			{def $menu_folder = $menu.data_map.menu_folder.data_text|wash()}
			{def $template = $menu.data_map.template.data_text|wash()}
			{def $template_path = concat('design:newscenter/navigation/', $menu_folder, '/', $template)|wash()}
				{include uri=$template_path menusetings=$menusettings}
			{undef $menu_folder $template $template_path}
		{undef $menu}
	{/if}
{undef $menusettings}
