{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

	{* Print the Zone *}
			
			<div class="{$#zone_width} no-margin no-padding{if $zone.data_map.background_color.has_content} {$zone.data_map.background_color.data_text}{/if}">
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					<div class="admin-panel container-padding-top hide">
						<strong class="container-padding-left-2">{$zone.name|wash()}</strong>
						<div class="pull-right">
							<a href="/content/edit/{$zone.contentobject_id}" title="Redigera zonen {$zone.name|wash()}" class="btn btn-info glyphicon glyphicon-edit"></a>
							<form method="post" action="/content/action" class="float-right container-padding-left">
								<input type="hidden" name="TopLevelNode" value="{$zone.node_id}" />
								<input type="hidden" name="ContentNodeID" value="{$zone.node_id}" />
								<input type="hidden" name="ContentObjectID" value="{$zone.contentobject_id}" />							
								<button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
							</form>
						</div>
						<div class="col-lg-12 clear no-margin container-padding-top">
							<div class="col-lg-12 clear container-padding-top no-margin">
								<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
									<form action="/content/action" method="post">
										<input type="hidden" value="widget_superslides" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$zone.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
										<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
									</form>
								</div>
								<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
									<form action="/content/action" method="post">
										<input type="hidden" value="widget_image_list_slider" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$zone.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
										<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
									</form>
								</div>
								<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
									<form action="/content/action" method="post">
										<input type="hidden" value="widget_facebook" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$zone.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
										<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-thumbs-up"></span></button>										
									</form>
								</div>
							</div>
						</div>
						<hr class="clear border-solid-black" />
					</div>
				{/if}
				{def $blocks = fetch('content', 'list', hash('parent_node_id', $zone.node_id, 'sort_by', array('priority', true()) ))}
				{if $blocks}
					{foreach $blocks as $block}

						{* Fetch the correct Block Size and store it in a global variable *}
						{include uri="design:newscenter/zone/zone_size.tpl" block=$block}

						{def $included_file = concat('design:newscenter/widget/', $block.class_identifier, '.tpl')}

							{* Verify if we are creating a container before block is included *}
							{if $#block_width|eq('col-lg-12')}
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
								asd							
								{*include uri=$included_file block=$block*}
							{else}
								<div class="{$#block_width} no-margin no-padding">
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
									{include uri=$included_file block=$block}
								</div>
							{/if}

						{undef $included_file}
					{/foreach}
				{/if}
				{undef $blocks}
			</div>
	
