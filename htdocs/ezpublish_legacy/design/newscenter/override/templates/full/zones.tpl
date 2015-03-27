{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
	<div class="container">
		<div class="content-edit">
			<div class="row">
				<div class="col-lg-12 container-padding-left-4 container-padding-right-4">
					<article>
					  <h1>Zonegenskaper</h1>
					  <p>Välj platsen där zonen ska skapas.</p>
					  <div class="form container-padding-left-2">
						{$company} test
						{def $node_list = fetch('content', 'tree', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('webiste', 'article', 'contact')))}
							{foreach $node_list as $node}
								{$node.name|wash()}
							{/foreach}
						{undef $node_list}
						<form action="/content/action" method="post">
							<input type="hidden" value="family_ad" name="ClassIdentifier">
							<input type="hidden" value="180" name="NodeID"> 
							<input type="hidden" value="swe-SE" name="ContentLanguageCode"> 
							<input type="submit" value="Beställ privatannons" name="NewButton" class="button new_commentaire">
						</form>
					  </div>
					</article>
				</div>
			</div>
		</div>
	</div>
{undef $company}