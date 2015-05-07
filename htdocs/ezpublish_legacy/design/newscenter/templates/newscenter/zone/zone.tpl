{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
			
			<div class="{$#zone_width} {$#zone_width_tablet} {$#zone_width_phone} no-margin no-padding{if $zone.data_map.background_color.has_content} {$zone.data_map.background_color.data_text}{/if}">
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					<div class="admin-panel container-padding-top hide">
						<strong class="container-padding-left-2">{$zone.name|wash()}</strong>
						<div class="col-lg-12">
							<form method="post" action="/content/action" class="float-left">
								<input type="hidden" name="TopLevelNode" value="{$zone.node_id}" />
								<input type="hidden" name="ContentNodeID" value="{$zone.node_id}" />
								<input type="hidden" name="ContentObjectID" value="{$zone.contentobject_id}" />							
								<button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove"></button>
							</form>							
							<a href="/content/edit/{$zone.contentobject_id}" title="Redigera zonen {$zone.name|wash()}" class="btn btn-info glyphicon glyphicon-edit container-margin-left"></a>
							<a href="/widgets/(id)/{$zone.node_id}" title="Lägg till widget" class="btn btn-success glyphicon glyphicon-plus container-margin-left"></a>
						</div>
					</div>
				{/if}
				{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id, 'sort_by', array('priority', true()) ))}
				{if $blocks}
					{foreach $blocks as $block}

						{def $block_size_desktop = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_dekstop.content.relation_list.0.node_id))}
						{def $block_size_tablet = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_tablet.content.relation_list.0.node_id))}
						{def $block_size_mobile = fetch('content', 'node', hash('node_id', $block.data_map.widget_size_phone.content.relation_list.0.node_id))}	
						{def $included_file = concat('design:newscenter/widget/', $block.class_identifier, '.tpl')}

							<div class="{$block_size_desktop.data_map.widget_size_class.data_text} {$block_size_tablet.data_map.widget_size_class.data_text|explode('lg')|implode('md')} {$block_size_mobile.data_map.widget_size_class.data_text|explode('lg')|implode('sm')} no-margin no-padding">
								{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
									<div class="col-lg-12 admin-panel hide clear container-padding-bottom container-padding-top">
										<div class="pull-left">
											Widget - {$block.name|wash()}
										</div>
										<div class="pull-right">
											<a href="/content/edit/{$block.contentobject_id}" title="Redigera Widget - {$block.name|wash()}" class="btn btn-info glyphicon glyphicon-edit"></a>
											<form method="post" action="/content/action" class="float-right container-padding-left">
												<input type="hidden" name="TopLevelNode" value="{$block.node_id}">
												<input type="hidden" name="ContentNodeID" value="{$block.node_id}">
												<input type="hidden" name="ContentObjectID" value="{$block.contentobject_id}">							
												<button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
											</form>
										</div>									
									</div>
								{/if}
								{* Include the Block *}
								{*include uri=$included_file block=$block*}
							</div>

						{undef $block_size_desktop $block_size_tablet $block_size_mobile $included_file}
					{/foreach}
				{/if}
				{undef $blocks}
			</div>
	
