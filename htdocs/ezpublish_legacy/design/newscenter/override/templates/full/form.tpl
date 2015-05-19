<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
		<article>
			<h1>{$node.name|wash()}</h1>
			{attribute_view_gui attribute=$node.data_map.body}
	</article>
</div>
