<div class="container">
	<article>
		<h1>{$node.name|wash()}</h1>
		{foreach $node.children as $contact_division}
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <h2>{$contact_division.name|wash()}</h2>
        {foreach $contact_division.children as $employee}
          <div class="container-padding-left">
            <h3>{$employee.name|wash()}</h3>
            <label><a href="tel:{$employee.data_map.cellphone.data_text}" title="{$employee.data_map.cellphone.data_text}">{$employee.data_map.cellphone.data_text}</a></label>
            <label><a href="mailto:{$employee.data_map.email.value}" title="{$employee.data_map.email.value}">{$employee.data_map.email.value}</a></label>
            <h4>{$employee.data_map.title.data_text}</h4>
          </div>
        {/foreach}
      </div>
    {/foreach}
	</article>
</div>