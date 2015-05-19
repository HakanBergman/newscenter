<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl" desktop_size='col-lg-12' tablet_size='col-lg-12' phone_size='col-lg-12'}
	<div class="container-padding-top container-padding-left link-color-wine-red-hover">
		<article>
			<h1>{$node.name|wash()}</h1>
			{attribute_view_gui attribute=$node.data_map.body}
		</article>
	</div>
</div>
