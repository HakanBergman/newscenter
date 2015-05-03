{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}

    <div class="container website container-padding-top container-padding-bottom container-padding-left-2 container-padding-left-2 {$menusettings.0.data_map.link_hover_color.data_text}">
		{* Check if we want to show the breadcrumb *}
	    {if $node.data_map.show_breadcrumb.value}{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}{/if}

	    <div class="col-lg-12">
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