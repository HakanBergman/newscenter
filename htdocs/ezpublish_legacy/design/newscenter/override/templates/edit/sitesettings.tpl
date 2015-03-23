<div class="container">
	<div class="content-edit">
		<form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id, "/", $edit_version, "/", $edit_language|not|choose( concat( $edit_language, "/" ), '' ) )|ezurl}>

			<div class="buttonblock">
				<input class="defaultbutton" type="submit" name="PublishButton" value="Spara ändringar" />
				<input class="button" type="submit" name="DiscardButton" value="Avbryt" />
				<input type="hidden" name="DiscardConfirm" value="0" />
			</div>

			{include uri="design:content/edit_validation.tpl"}

			<div class="row">
				<div class="col-lg-12 container-padding-left-4 container-padding-right-4">
				<article>
				<h1>Sajtinställningar</h1>
					<h3>SEO - Inställningar</h3>
					<div class="form container-padding-left-2">
						<div class="form-group">
							<label>Beskrivning av företaget (max 255 tecken)</label>
							<div>{attribute_edit_gui attribute=$company.data_map.seo_description}</div>
						</div>
					</form>
				</article>
				</div>
			</div>		

			<input type="hidden" name="MainNodeID" value="{$main_node_id}" />

			{include uri="design:content/edit_attribute.tpl"}

			<div class="buttonblock">
				<input class="defaultbutton" type="submit" name="PublishButton" value="Spara ändringar" />
				<input class="button" type="submit" name="DiscardButton" value="Avbryt" />
				<input type="hidden" name="DiscardConfirm" value="0" />
			</div>

		</form>
    </div>
</div>



{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
{def $user = fetch('user', 'current_user')}
  {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}

  {/if}
{undef $company $user}