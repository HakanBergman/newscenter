{def $menusettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
	{def $value = $menusettings.0.data_map.menu_plugin.value.0}
		{switch match=$menusettings.0.data_map.menu_plugin.class_content.options.$value.name}
			{case match='Yammr'}
				{include uri="design:newscenter/navigation/yammr/yammr.tpl" menusettings=$menusettings}	
			{/case}
			{case match='Bilhandlare'}				
				{include uri="design:newscenter/navigation/lexus/lexus.tpl" menusettings=$menusettings}	
			{/case}
		{/switch}	
	{undef $value}
{undef $menusettings}
