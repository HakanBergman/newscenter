<div class="container">
		<h2>{$node.name|wash()}</h2>
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
		  {foreach $node.children as $contact_division}
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <h3>{$contact_division.name|wash()}</h3>
          {foreach $contact_division.children as $employee}
            <div class="container-padding-left">
              <h4 class="no-margin container-padding-top">{$employee.name|wash()}</h4>
              <div class="col-lg-5 col-md-6 col-sm-7 col-xs-12">
                <div class="pull-left">
                  <label><a href="tel:{$employee.data_map.cellphone.data_text}" title="{$employee.data_map.cellphone.data_text}">{$employee.data_map.cellphone.data_text}</a></label>
                </div>
                <div class="pull-right">
                  <label><a href="mailto:{$employee.data_map.email.value}" title="{$employee.data_map.email.value}">{$employee.data_map.email.value}</a></label>
                </div>
              </div>
              <h5 class="clear">{$employee.data_map.title.data_text}</h5>
            </div>
          {/foreach}
        </div>
      {/foreach}
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
      <form method="post">
        <input type="text"></input>
        <input type="text"></input>
        <input type="text"></input>
        <input type="text"></input>
        <button>Button</button>
      </form>
    </div>    
</div>