{def $user = fetch('user', 'current_user')}
	{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
		{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}		
			<div class="container">
				<div class="content-edit">
					<div class="row">
						<div class="col-lg-12 container-padding-left-4 container-padding-right-4">
							<article>

								{if $view_parameters.id}
									{def $node = fetch('content', 'node', hash('node_id', $view_parameters.id))}
										{if $node}
											{switch match=$node.class_identifier}
												{case match='zone'}
													<h1>Skapa widget för zonen {$node.name|wash()}</h1>	
													<div class="col-lg-12 clear no-margin container-padding-top">
														<div class="col-lg-12 clear container-padding-top no-margin">
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_puff" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_weather" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_order" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_text" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_products" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_empty" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_links" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
															<div class="float-left container-margin-left container-padding-right container-padding-left thumbnail">
																<form action="/content/action" method="post">
																	<input type="hidden" value="widget_image" name="ClassIdentifier">
																	<input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID"> 
																	<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 							
																	<button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-picture"></span></button>										
																</form>
															</div>
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
												{/case}
												{case}
													<div class="col-lg-12">Det ID som angetts matchar ingen aktuell zon.</div>
												{/case}
											{/switch}
										{else}
											<div class="col-lg-12">Det finns inga objekt för angivet ID.</div>
										{/if}
									{undef $node}
								{else}
									<div class="col-lg-12">Felaktigt ID.</div>
								{/if}
							</article>
						</div>
					</div>
				</div>
			</div>
		{/if}
	{undef $company}	
{undef $user}