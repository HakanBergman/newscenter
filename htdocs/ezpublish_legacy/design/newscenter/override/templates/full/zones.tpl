{def $user = fetch('user', 'current_user')}
	{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
		{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}		
			<div class="container">
				<div class="content-edit">
					<div class="row">
						<div class="col-lg-12 container-padding-left-4 container-padding-right-4">
							<article>
							  <h1>Zonegenskaper</h1>	
							  							  						  
							  <div class="form container-padding-left-2">
								<h3>Skapa en ny Zon</h3>
								<div class="col-lg-12 container-padding-top">
									<p>Välj mall</p>
									<select name="zone-template" class="form-control zone-template">
										<option value="zone">Standard Zon</option>
										<option value="zone_global">Global Zon</option>
									</select>
								</div>

								<div class="col-lg-12 container-padding-top-2">
									<p>Välj platsen där zonen ska skapas.</p>
									<select name="zone-node" class="form-control zone-node">
										<option value="{$company.node_id}">{$company.name|wash()}</option>
										{def $node_list = fetch('content', 'tree', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('website', 'article', 'news_list', 'news_category'), 'sort_by', array('name', true())))}
											{foreach $node_list as $node}
												<option value="{$node.node_id}">{$node.name|wash()}</option>
											{/foreach}
										{undef $node_list}
									</select>
								</div>

								<form action="/content/action" method="post">
									<input type="hidden" value="zone" name="ClassIdentifier">
									<input type="hidden" class="input-zone-id" value="{$company.node_id}" name="NodeID"> 
									<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
									<div class="buttonblock pull-right container-padding-top-2 clear">
									  <button type="submit" name="NewButton" class="btn btn-primary">Skapa Zon</button>
									  <a href="/" class="btn btn-default" role="button">Avbryt</a>
									</div>
								</form>
							  </div>

							  <div class="form container-padding-left-2 clear">								
								<h3>Globala Zoner</h3>
							  </div>

							</article>
						</div>
					</div>
				</div>
			</div>
		{/if}
	{undef $company}	
{undef $user}