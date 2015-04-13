
<div class="container container-padding-left-2 container-padding-left-2">
  {if ezhttp('captcha', 'POST')}
  {ezcreateemail()}
  {/if}
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  
  {def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
  {def $sitesettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
  {$sitesettings|attribute(show, 1)}
  <h2>{$node.name|wash()}</h2>
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

      {def $user = fetch('user', 'current_user')}
        {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
          <div class="edit admin-panel container-padding-left-2 container-padding-top-05">
					  <form action="/content/action" method="post">
						  <input type="hidden" value="contact_region" name="ClassIdentifier" />
						  <input type="hidden" class="input-zone-id" value="{$node.node_id}" name="NodeID" /> 
						  <input type="hidden" value="swe-SE" name="ContentLanguageCode" /> 
						  <button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding"><span class="glyphicon glyphicon-file text-primary"></span> <span class="container-padding-left">Ny Region</span></button>
					  </form>
				  </div>
		    {/if}     
      {undef $user}
      
		  {foreach $node.children as $contact_division}
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h3>{$contact_division.name|wash()}</h3>

          {def $user = fetch('user', 'current_user')}
            {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
              <div class="edit admin-panel container-padding-left-2 container-padding-top-05">
                <form action="/content/action" method="post">
                  <input type="hidden" value="contact" name="ClassIdentifier" />
                  <input type="hidden" class="input-zone-id" value="{$contact_division.node_id}" name="NodeID" />
                  <input type="hidden" value="swe-SE" name="ContentLanguageCode" />
                  <button type="submit" name="NewButton" class="btn btn-link text-decoration-none no-margin no-padding">
                    <span class="glyphicon glyphicon-file text-primary"></span>
                    <span class="container-padding-left">Ny Kontaktperson</span>
                  </button>
                </form>
              </div>
            {/if}
          {undef $user}

          {foreach $contact_division.children as $employee}
          <div class="container-padding-left">
              <h4 class="no-margin container-padding-top">{$employee.name|wash()}</h4>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label><a href="tel:{$employee.data_map.cellphone.data_text}" title="{$employee.data_map.cellphone.data_text}">{$employee.data_map.cellphone.data_text}</a></label>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <label><a href="mailto:{$employee.data_map.email.value}" title="{$employee.data_map.email.value}">{$employee.data_map.email.value}</a></label>
              </div>
              <h5 class="clear container-padding-left">{$employee.data_map.title.data_text}</h5>
            </div>
          {/foreach}
        </div>
      {/foreach}
    </div>
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
      <h3>Kontaktformulär</h3>
      <form method="post" action="{$node.url|ezurl('no', 'full')}">
        <div class="container-padding-left-3">

          <div class="form-group">
            <label for="sel1">Välj mottagare</label>
            <select class="form-control" id="sel1">
              <option value="{$sitesettings.0.data_map.email.value}">{$sitesettings.0.data_map.email.value}</option>
              {foreach $node.children as $contact_division}
              {foreach $contact_division.children as $employee}
              <option value="{$employee.data_map.email.value}">{$employee.name|wash()}</option>
              {/foreach}
              {/foreach}
            </select>
          </div>

          <div class="form-group">
            <label for="foretagsnamn">Företagsnamn</label>
            <input type="text" class="form-control" id="foretagsnamn" placeholder="Företagsnamn"></input>
          </div>

          <div class="form-group">
            <label for="kontaktperson">Er kontaktperson</label>
            <input type="text" class="form-control" id="kontaktperson" placeholder="Kontaktperson"></input>
          </div>

          <div class="form-group">
            <label for="telefonnummer">Telefonnummer</label>
            <input type="text" class="form-control" id="telefonnummer" placeholder="Telefonnummer"></input>
          </div>

          <label for="sel1">E-postadress</label>
          <div class="input-group">
            <span class="input-group-addon" id="E-postadress">@</span>
            <input type="text" class="form-control" placeholder="E-postadress" aria-describedby="E-postadress" data-clear-btn="true"></input>
          </div>

          <div class="form-group">
            <label for="meddelande">Meddelande</label>
            <textarea class="form-control" rows="5" id="meddelande"></textarea>
          </div>

          <div class="form-group">
            <div class="col-lg-12 no-padding no-margin">
              {def $captcha = ezcreatecaptcha()}                
                <img src="{concat('captcha/', $captcha, '.png')|ezimage('no')}" class="img-responsive"></img>
              {undef $captcha}
            </div>
            <div class="col-lg-12 no-padding no-margin container-padding-top">
              <input type="text" class="form-control" placeholder="Ange koden här" aria-describedby="captcha" data-clear-btn="true" name="captcha"></input>
            </div>
          </div>

          <div class="form-group clear">
            <div class="col-lg-12 no-padding container-padding-top-2">
              <div class="pull-right">
                <button class="btn btn-primary" type="submit">Skicka mail</button>
              </div>
            </div>
          </div>

        </div>
      </form>
    </div>
  {undef $sitesettings $company}
</div>