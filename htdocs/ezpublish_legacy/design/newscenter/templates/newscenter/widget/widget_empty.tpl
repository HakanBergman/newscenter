{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
		
		{def $block_size_desktop = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_desktop.content.relation_list.0.node_id))}
		{def $block_size_tablet = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_tablet.content.relation_list.0.node_id))}
		{def $block_size_mobile = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_phone.content.relation_list.0.node_id))}		

		{$block.data_map.widget_size_dekstop.content.relation_list.0.node_id}
			<div class="{$block_size_desktop.data_map.widget_size_class.data_text} {$block_size_tablet|explode('lg')|implode('md')} {$block_size_mobile|explode('lg')|implode('sm')} container-padding-top container-padding-right container-padding-left no-margin no-padding">
				&nbsp;		
			</div> 

		{undef $block_size_desktop $block_size_tablet $block_size_mobile}
	{undef $menusettings}
{undef $company}