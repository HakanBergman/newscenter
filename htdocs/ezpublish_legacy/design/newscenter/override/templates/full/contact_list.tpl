<div class="container">
  {def $home_node = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
		<h2>{$node.name|wash()}</h2>
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		  {foreach $node.children as $contact_division}
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h3>{$contact_division.name|wash()}</h3>
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
      <form method="post">
        <div class="container-padding-left-3">
          
          <div class="form-group">
            <label for="sel1">Välj mottagare</label>
            <select class="form-control" id="sel1">
              <option value="{$home_node.data_map.email.value}">{$home_node.data_map.email.value}</option>
              {foreach $node.children as $contact_division}
                {foreach $contact_division.children as $employee}
                  <option value="{$employee.data_map.email.value}">{$employee.name|wash()}</option>
                {/foreach}
              {/foreach}
            </select>
          </div>

          <div class="form-group">
            <label for="foretagsnamn">Företagsnamn</label>
            <input type="password" class="form-control" id="foretagsnamn" placeholder="Företagsnamn"></input>
          </div>

          <div class="form-group">
            <label for="kontaktperson">Er kontaktperson</label>
            <input type="password" class="form-control" id="kontaktperson" placeholder="Kontaktperson"></input>
          </div>

          <div class="form-group">
            <label for="telefonnummer">Telefonnummer</label>
            <input type="password" class="form-control" id="telefonnummer" placeholder="Telefonnummer"></input>
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

          <div class="pull-right">
            <button class="btn btn-primary" type="button">Skicka mail</button>
          </div>
          {def $captcha = ezcreatecaptcha()}
            {concat('captcha/', $captcha, '.png')|ezimage()}
            <img src="/design/newscenter/images/captcha/{ezcreatecaptcha()}.png" class="img-responsive"></img>          
          {undef $captcha}
        </div>        
      </form>
    </div>
  {undef home_node}
</div>