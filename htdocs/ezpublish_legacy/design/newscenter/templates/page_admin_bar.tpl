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
					<div class="min-height-108"><span class="glyphicon glyphicon-info-sign text-color-black"></span> {$#company.name|wash()}</div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-cog text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Sajtinställningar</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-cog text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Menyinställningar</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-user text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Användarkonton</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-tasks text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Widgets</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-tasks text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Zoner</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-4 no-padding no-margin container-padding-left-2">
					<div class="min-height-108"><span class="glyphicon glyphicon-plus text-color-black"></span> Lägg till ny</div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-file text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Kontaktlista</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-file text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Nyhetslista</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-file text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Produktkatalog</a>
						</div>
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-file text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Webbsida</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-4 no-padding no-margin container-padding-left-2">
					<div class="min-height-108">
						<span class="glyphicon glyphicon-user text-color-black"></span>
						{$user.contentobject.data_map.first_name.data_text|wash()} {$user.contentobject.data_map.last_name.data_text|wash()}
						<a href="#" class="toggle-admin-bar text-color-black"><span class="glyphicon glyphicon-menu-hamburger float-right container-padding-right-3 container-padding-top-02"></span></a>
					</div>				
					<div class="admin-bar hide col-lg-12 col-md-12 col-sm-12 col-xs-12 no-margin no-padding left-none bg-white absolute min-height-11-em">
						<hr class="no-margin no-padding container-padding-top" />
						<div class="edit container-padding-left-2 container-padding-top-05">
							<span class="glyphicon glyphicon-pencil text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Redigera profil</a>
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