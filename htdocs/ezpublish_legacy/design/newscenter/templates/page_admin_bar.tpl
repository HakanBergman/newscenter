{if and(is_set($object)|not, is_set($edit_version)|not)}
	{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
		<nav class="navbar navbar-fixed-top min-height-none bg-white thumbnail no-margin no-padding container-padding-top-05 container-padding-bottom-02">
			<div class="row no-margin no-padding">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 no-padding no-margin container-padding-left-2">
					<img src="{'dhc_298x151.png'|ezimage('no')}" class="img-responsive max-width-3-em-important float-left" />
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding container-margin-top-108 left-none bg-white absolute min-height-11-em" id="admin_sidebar_dhc">
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-home text-primary"></span> <a href="http://www.datadelenhc.se" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Datadelen Hosting Center</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-cloud text-primary"></span> <a href="http://webbcenter.datadelenhc.se/" class="text-decoration-none container-padding-left" title="Datadelen Webb Center" target="_blank">Datadelen Webb Center</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-question-sign text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Dokumentation</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-4 no-padding no-margin container-padding-left-2">
					<div class="min-height-108"><span class="glyphicon glyphicon-info-sign text-color-black"></span> <a href="/" title="{$#company.name|wash()}">{$#company.name|wash()}</a></div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
								<span class="glyphicon glyphicon-cog text-primary"></span> <a href="/content/edit/{$sitesettings.0.contentobject_id}" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center">Sajtinställningar</a>
							{undef $sitesettings}
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							{def $menusettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}
								<span class="glyphicon glyphicon-cog text-primary"></span> <a href="/content/edit/{$menusettings.0.contentobject_id}" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center">Menyinställningar</a>
							{undef $menusettings}
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-user text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Användarkonton</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-tasks text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Widgets</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-th-large text-primary"></span> <a href="/Zoner" class="text-decoration-none container-padding-left" title="Administrera Zoner">Zoner</a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4 no-padding no-margin container-padding-left-2">
					<div class="min-height-108"><span class="glyphicon glyphicon-plus text-color-black"></span> Lägg till ny</div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-th-large text-primary"></span> <a href="/Zoner" class="text-decoration-none container-padding-left" title="Lägg till Zon">Zon</a>
						</div>
						{switch match=$current_node.class_identifier}
							{case match='company_name'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="contact_list" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Kontaktlista</span></button>
									</form>
								</div>
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="link" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Länk</span></button>
									</form>
								</div>
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="product_catalogue" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Produktkatalog</span></button>
									</form>
								</div>
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="website" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Webbsida</span></button>
									</form>
								</div>
							{/case}
							{case match='website'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="form" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Formulär</span></button>
									</form>
								</div>
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="website" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Webbsida</span></button>
									</form>
								</div>
							{/case}
							{case match='product_catalogue'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="product_category" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Produktkatalog</span></button>
									</form>
								</div>
							{/case}
							{case match='product_category'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="product_country" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Skapa land</span></button>
									</form>
								</div>
							{/case}
							{case match='product_country'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="product_list" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Produktlista</span></button>
									</form>
								</div>
							{/case}
							{case match='product_list'}
								<div class="edit container-padding-left-2 container-padding-top-05">
									<form action="/content/action" method="post">
										<input type="hidden" value="product" name="ClassIdentifier">
										<input type="hidden" class="input-zone-id" value="{$current_node.node_id}" name="NodeID"> 
										<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
										<button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Produkt</span></button>
									</form>
								</div>
							{/case}
						{/switch}
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 no-padding no-margin container-padding-left-2">
					<div class="min-height-108">
						<div class="col-lg-4 no-margin no-padding">
							<span class="glyphicon glyphicon-user text-color-black"></span>
							{$user.contentobject.data_map.first_name.data_text|wash()} {$user.contentobject.data_map.last_name.data_text|wash()}						
						</div>
						<div class="col-lg-4 no-margin no-padding">
							<div class="input-group"><input type="checkbox" aria-label="Preview" class="toggle-preview"> Förhandsgranska</div>
						</div>
						<div class="col-lg-4 no-margin no-padding">
							<a href="#menu" class="toggle-admin-bar text-color-black"><span class="glyphicon glyphicon-menu-hamburger float-right container-padding-right-3 container-padding-top-02"></span></a>
						</div>
					</div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-pencil text-primary"></span> <a href="/user/edit" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Redigera profil</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-off text-primary"></span> <a href="/user/logout" class="text-decoration-none container-padding-left" title="Logga ut">Logga ut</a>
						</div>
					</div>				
				</div>
			</div>																			
		</nav>
	{/if}
{/if}