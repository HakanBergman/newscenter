<div class="container">
		<h2>{$node.name|wash()}</h2>
    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
		  {foreach $node.children as $contact_division}
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h3>{$contact_division.name|wash()}</h3>
          {foreach $contact_division.children as $employee}
            <div class="container-padding-left">
              <h4 class="no-margin container-padding-top">{$employee.name|wash()}</h4>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label><a href="tel:{$employee.data_map.cellphone.data_text}" title="{$employee.data_map.cellphone.data_text}">{$employee.data_map.cellphone.data_text}</a></label>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <label><a href="mailto:{$employee.data_map.email.value}" title="{$employee.data_map.email.value}">{$employee.data_map.email.value}</a></label>
              </div>
              <h5 class="clear">{$employee.data_map.title.data_text}</h5>
            </div>
          {/foreach}
        </div>
      {/foreach}
    </div>
    <div class="col-lg-6 col-md-6 col-sm-4 col-xs-12">
      <form method="post">
        <input type="text"></input>
        <input type="text"></input>
        <input type="text"></input>
        <input type="text"></input>
        <button>Button</button>
      </form>
    </div>    
</div>