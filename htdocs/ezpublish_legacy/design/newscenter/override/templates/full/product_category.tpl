
<div class="container">

  {def $breadcrumb = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
    <ul class="breadcrumb">
      {$breadcrumb.path_array|attribute(show, 1)}
      {foreach $breadcrumb.path_array as $path}
        PATH {$path}
        {def $path_node = def('content', 'node', hash('node_id', $path.0))}
        {$path_node|attribute(show, 1)}
        {if $path_node.url}
          <li> 
              hit
              <a href={"cond"( is_set=""( $path_node.url_alias="" ), $path_node.url_alias="", $path_node.url="" )|ezurl=""}>{$path_node.name|wash()}</a>
              <span class="divider">&raquo;</span>
          </li>
        {else}
          <li class="active">
            {$path_node.name|wash()}
          </li>
        {/if}
       {/foreach}
      </ul>
  {undef $breadcrumb}

  <h2>{$node.name|wash()}</h2>
	{if $node.children}
		{foreach $node.children as $child}
			{switch match=$child.class_identifier}
				{case match='product_country'}
					{switch match=$node.children|count()}
						{case match=2}
							{def $column_size = "col-lg-6 col-md-6 col-sm-6 col-xs-12"}
						{/case}
						{case match=3}
							{def $column_size = "col-lg-4 col-md-4 col-sm-4 col-xs-12"}
						{/case}
						{case match=4}
							{def $column_size = "col-lg-3 col-md-4 col-sm-3 col-xs-12"}
						{/case}
						{case}
							{def $column_size = "col-lg-12"}
						{/case}
					{/switch}
					<div class="{$column_size} container-padding-top">
						<div class="flag flag-icon-background {$child.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
						<h3 class="container-padding-left float-left no-margin {$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}"><a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a></h3>
						{foreach $child.children as $grandchild}
							{switch match=$grandchild.class_identifier}
								{case match='product_list'}
									{switch match=$grandchild.class_identifier}
										{case match='product_list'}
											<div class="row clear">
												<div class="col-lg-12 container-padding-top-05">
													<h4 class="container-padding-left-3 container-padding-bottom font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}"><a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}">{$grandchild.name}</a></h4>
													{if $grandchild.children}
														{foreach $grandchild.children as $grandgrandchild}
															<h5 class="container-padding-left-4 font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}">
																{if $grandgrandchild.class_identifier|eq('product')}<img class="img-responsive max-width-2-em float-left" src="/{$grandgrandchild.data_map.image.content.original.full_path}" alt="{$grandgrandchild.name|wash()}"></img>{/if}																
																<a href="{$grandgrandchild.url|ezurl('no', 'full')}" title="{$grandgrandchild.name|wash()}" class="container-padding-left font-weight-normal">{$grandgrandchild.name|wash()}</a>
															</h5>
														{/foreach}
													{/if}
												</div>
											</div>
										{/case}
									{/switch}									
								{/case}
							{/switch}
						{/foreach}
					</div>
				{/case}
			{/switch}
		{/foreach}
	{/if}
</div>


