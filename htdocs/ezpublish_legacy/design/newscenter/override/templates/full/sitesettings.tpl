{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}

  <div class="container thumbnail">
	  <div class="row">
		  <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
        <article>
          <h1>Sajtinställningar</h1>
          {attribute_edit_gui attribute=$company.data_map.seo_description}
          {$company|attribute(show, 1)}
        </article>
		  </div>
	  </div>
  </div>

{undef $company}