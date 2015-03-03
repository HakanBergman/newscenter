<div class="container">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
	<div class="col-lg-12">
		<article>
			<h1>{$node.name|wash()}</h1>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
				<img src="/{$website.data_map.image.content.original.full_path}" alt="{$node.name|wash()}"></img>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
				{attribute_view_gui attribute=$node.data_map.intro}
				{attribute_view_gui attribute=$node.data_map.body}
				{attribute_view_gui attribute=$node.data_map.summary}
			</div>
		</article>
	</div>
</div>