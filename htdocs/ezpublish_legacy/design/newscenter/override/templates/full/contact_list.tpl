<div class="container">
		<h2>{$node.name|wash()}</h2>
		{foreach $node.children as $contact_division}
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <h3>{$contact_division.name|wash()}</h3>
        {foreach $contact_division.children as $employee}
          <div class="container-padding-left">
            <h4>{$employee.name|wash()}</h4>
            <label><a href="tel:{$employee.data_map.cellphone.data_text}" title="{$employee.data_map.cellphone.data_text}">{$employee.data_map.cellphone.data_text}</a></label>
            <label><a href="mailto:{$employee.data_map.email.value}" title="{$employee.data_map.email.value}">{$employee.data_map.email.value}</a></label>
            <h5>{$employee.data_map.title.data_text}</h5>
          </div>
        {/foreach}
      </div>
    {/foreach}
</div>