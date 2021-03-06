﻿<div class="container container-padding-bottom">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2>{$node.name|wash()}</h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
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
					<div class="{$column_size} container-padding-top {$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">
						<div class="flag flag-icon-background {$child.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
						<h3 class="container-padding-left float-left no-margin"><a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a></h3>
						{foreach $child.children as $grandchild}
							{switch match=$grandchild.class_identifier}
								{case match='product_list'}
									{switch match=$grandchild.class_identifier}
										{case match='product_list'}
											<div class="row clear">
												<div class="col-lg-12 container-padding-top-05 container-padding-left-2">
													<h4 class="container-padding-left-3 container-padding-bottom font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}"><a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}"><strong>{$grandchild.name}</strong></a></h4>
													{if $grandchild.children}
														{foreach $grandchild.children as $grandgrandchild}
															<h5 class="container-padding-left-4 container-padding-top-05 font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text} clear">
                                {if $grandgrandchild.class_identifier|eq('product')}{if $grandgrandchild.data_map.image.has_content}<img class="img-responsive max-width-2-em float-left" src="/{$grandgrandchild.data_map.image.content.original.full_path}" alt="{$grandgrandchild.name|wash()}"></img>{/if}{if $grandgrandchild.data_map.image.has_content|not}<img src="{'no-image.png'|ezimage('no')}" class="img-responsive thumbnail max-width-2-em float-left no-margin" alt="{$grandgrandchild.name|wash()}"></img>{/if}{/if}
                                <a href="{$grandgrandchild.url|ezurl('no', 'full')}" title="{$grandgrandchild.name|wash()}" class="container-padding-left-2 font-weight-normal">{$grandgrandchild.name|wash()}</a>
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


