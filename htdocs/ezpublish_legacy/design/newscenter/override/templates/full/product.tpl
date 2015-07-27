<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <div class="row container-margin-top clear container-margin-left-05">
	  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
		  <img src="/{$node.data_map.image.content.original.full_path}" class="img-responsive thumbnail no-margin" alt="{$node.name|wash()}"></img>
	  </div>
	  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
		  {attribute_view_gui attribute=$node.data_map.description}
		  {attribute_view_gui attribute=$node.data_map.short_description}
	  </div>
  </div>
</div>
