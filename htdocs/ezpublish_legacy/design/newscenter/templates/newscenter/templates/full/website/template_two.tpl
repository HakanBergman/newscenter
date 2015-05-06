{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}

    <div class="container website container-padding-top container-padding-bottom container-padding-left-2 container-padding-left-2 {$menusettings.0.data_map.link_hover_color.data_text}">
		
		{def $website_size_desktop = fetch('content', 'node', hash('node_id', $node.data_map.size_desktop.content.relation_list.0.node_id))}
		{def $website_size_tablet = fetch('content', 'node', hash('node_id', $node.data_map.size_tablet.content.relation_list.0.node_id))}
		{def $website_size_mobile = fetch('content', 'node', hash('node_id', $node.data_map.size_phone.content.relation_list.0.node_id))}		

		{* Check if we want to show the breadcrumb *}
	    {if $node.data_map.show_breadcrumb.value}{include uri="design:newscenter/widget/widget_breadcrumb.tpl" desktop_size=$website_size_desktop.data_map.widget_size_class.data_text tablet_size=$website_size_tablet.data_map.widget_size_class.data_text phone_size=$website_size_mobile.data_map.widget_size_class.data_text }{/if}

	    <div class="{$website_size_desktop.data_map.widget_size_class.data_text} {$website_size_tablet.data_map.widget_size_class.data_text|explode('lg')|implode('md')} {$website_size_mobile.data_map.widget_size_class.data_text|explode('lg')|implode('sm')}">
		    <article>
				<h1>{$node.name|wash()}</h1>
				<div class="col-lg-12">{attribute_view_gui attribute=$node.data_map.intro}</div>
				<div class="col-lg-12">{attribute_view_gui attribute=$node.data_map.body}</div>
				<div class="col-lg-12">{attribute_view_gui attribute=$node.data_map.summary}</div>
		    </article>
	    </div>
    </div>

  {undef $menusettings}
 {undef $company}