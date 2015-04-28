{def $menusettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
	{if $menusettings.0.data_map.menu_plugin.content.relation_list.0.node_id}
		{def $menu = fetch('content', 'node', hash('node_id', $menusettings.0.data_map.menu_plugin.content.relation_list.0.node_id))}
			{def $menu_folder = $menu.data_map.menu_folder.data_text|wash()}
			{def $template = $menu.data_map.template.data_text|wash()}
				{concat('design:newscenter/navigation/', $menu_folder, '/', $template)}
				{include uri="design:newscenter/navigation/cardealers/template_one.tpl" menusetings=$menusettings}
				{include uri="concat('design:newscenter/navigation/', $menu_folder, '/', $template)" menusettings=$menusettings}
			{undef $menu_folder $template}
		{undef $menu}
	{/if}
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
