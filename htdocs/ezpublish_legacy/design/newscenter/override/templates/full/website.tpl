{def $menusettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
  <div class="container website container-padding-top container-padding-bottom container-padding-left-2 container-padding-left-2 {$menusettings.0.data_map.link_hover_color.data_text}">
    M {$menusettings}
	  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
	  <div class="col-lg-12">
		  <article>
			  <h1>{$node.name|wash()}</h1>      
			  <div class="col-lg-4 col-md-4 col-sm-12 col-xs-14">
          {if $website.data_map.imate.has_content}
				    <img src="/{$website.data_map.image.content.original.full_path}" alt="{$node.name|wash()}"></img>
          {/if}
        </div>      
			  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
          <div>{attribute_view_gui attribute=$node.data_map.intro}</div>
          <div class="container-padding-top">{attribute_view_gui attribute=$node.data_map.body}</div>
          <div class="container-padding-top">{attribute_view_gui attribute=$node.data_map.summary}</div>
			  </div>
		  </article>
	  </div>
  </div>
{undef $menusettings}