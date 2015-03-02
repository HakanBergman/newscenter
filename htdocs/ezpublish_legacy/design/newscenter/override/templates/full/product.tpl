<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
	<div class="col-lg-4">
		<img src="/{$node.data_map.image.content.original.full_path}" class="img-responsive thumbnail no-margin" alt="{$node.name|wash()}"></img>
	</div>
	<div class="col-lg-8">
		{attribute_view_gui attribute=$node.data_map.description}
		{attribute_view_gui attribute=$node.data_map.short_description}
	</div>
</div>
