<div class="container">
	<article>
		<h1>{$node.name|wash()}</h1>
		{foreach $node.children as $contact_division}
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <h2>{$contact_division.name|wash()}</h2>
      </div>
    {/foreach}
	</article>
</div>