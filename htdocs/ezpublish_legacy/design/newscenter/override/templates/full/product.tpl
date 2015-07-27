<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <div class="row container-margin-top clear container-margin-left-05 container-margin-bottom">
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
      <a href="#" data-toggle="modal" data-target="#myModal">
        <span class="glyphicon glyphicon-zoom-in thumbnail absolute right-16-px top-1-px min-width-2-em min-height-2-em container-padding-left-7-px container-padding-top-3-px"></span>
      </a>
      <img src="/{$node.data_map.image.content.original.full_path}" class="img-responsive thumbnail no-margin" alt="{$node.name|wash()}"></img>
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Launch demo modal
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>
    </div>
	  <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
		  {attribute_view_gui attribute=$node.data_map.description}
		  {attribute_view_gui attribute=$node.data_map.short_description}
	  </div>
  </div>
</div>
