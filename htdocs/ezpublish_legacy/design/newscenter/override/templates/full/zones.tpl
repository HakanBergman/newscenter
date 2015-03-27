{def $user = fetch('user', 'current_user')}
	{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
		{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}		
			<div class="container">
				<div class="content-edit">
					<div class="row">
						<div class="col-lg-12 container-padding-left-4 container-padding-right-4">
							<article>
							  <h1>Zonegenskaper</h1>
							  <p>Välj platsen där zonen ska skapas.</p>
							  <div class="form container-padding-left-2">
								<select class="form-control zone-selector">
									<option value="{$company.node_id}" data-classid="{$company.class_identifier}">{$company.name|wash()}</option>
									{def $node_list = fetch('content', 'tree', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('webiste', 'article', 'contact')))}
										{foreach $node_list as $node}
											<option>{$node.name|wash()}</option>
										{/foreach}
									{undef $node_list}
								</select>
								<form action="/content/action" method="post">
									<input type="hidden" value="{$company.class_identifier}" name="ClassIdentifier">
									<input type="hidden" value="{$company.node_id}" name="NodeID"> 
									<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
									<div class="buttonblock pull-right container-padding-top-2 clear">
									  <button type="submit" ame="NewButton" class="btn btn-primary">Skapa Zon</button>
									  <button type="button" name="DiscardButton" class="btn btn-link history-back">Avbryt</button>
									</div>
								</form>
							  </div>
							</article>
						</div>
					</div>
				</div>
			</div>
		{/if}
	{undef $company}	
{undef $user}