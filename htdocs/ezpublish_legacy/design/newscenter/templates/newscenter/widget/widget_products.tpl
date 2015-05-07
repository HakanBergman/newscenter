{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
		
		{def $block_size_desktop = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_dekstop.content.relation_list.0.node_id))}
		{def $block_size_tablet = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_tablet.content.relation_list.0.node_id))}
		{def $block_size_mobile = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_phone.content.relation_list.0.node_id))}	

			<div class="{$block_size_desktop.data_map.widget_size_class.data_text} {$block_size_tablet.data_map.widget_size_class.data_text|explode('lg')|implode('md')} {$block_size_mobile.data_map.widget_size_class.data_text|explode('lg')|implode('sm')} container-padding-top container-padding-right container-padding-left no-margin no-padding">
			  <div class="row widget-margin-top widget-links">
				  <div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
					  <article>
							<h4 class="text-center {$block.data_map.background_color.data_text} {$block.data_map.text_color.data_text} container-padding-top-05 container-padding-bottom-05">{$block.name|wash()}</h4>
							{if and(is_set($object)|not, is_set($edit_version)|not)}
							  {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
								<div class="container-margin-left admin-panel container-padding-right container-padding-left float-right">
									<form action="/content/action" method="post">
										<input type="hidden" value="product" name="ClassIdentifier" />
										<input type="hidden" class="input-zone-id" value="{$block.node_id}" name="NodeID" /> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode" /> 							
										<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-plus"></span></button>										
									</form>
								</div>
							  {/if}
							{/if}

					  </article>
				  </div>
			  </div>
			</div>

		{undef $block_size_desktop $block_size_tablet $block_size_mobile}
	{undef $menusettings}
{undef $company}