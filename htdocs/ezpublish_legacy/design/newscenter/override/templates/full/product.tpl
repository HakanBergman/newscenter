<div class="container container-padding-top">
	{include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <div class="row container-margin-top clear container-margin-left-05 container-margin-bottom">
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
      {* Trigger Modal Window *}
      <a href="#" data-toggle="modal" data-target="#image"><span class="glyphicon glyphicon-zoom-in thumbnail absolute right-16-px top-1-px min-width-2-em min-height-2-em container-padding-left-7-px container-padding-top-3-px"></span></a>
      <img src="/{$node.data_map.image.content.original.full_path}" class="img-responsive thumbnail no-margin" alt="{$node.name|wash()}"></img>
      {* Modal *}
      <div class="modal fade" id="image" tabindex="-1" role="dialog" aria-labelledby="image">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <a href="#close" class="float-right font-weight-bold text-color-black font-size-18-px" data-dismiss="modal" aria-label="Close"><span class="glyphicon glyphicon-remove font-size-18-px"></span></a>
              <h4 class="modal-title" id="myModalLabel">{$node.data_map.name.data_text}</h4>
            </div>
            <div class="modal-body"><img src="/{$node.data_map.image.content.original.full_path}" class="img-responsive thumbnail no-margin width-100-percent" alt="{$node.name|wash()}"></img></div>
          </div>
        </div>
      </div>
    </div>
	  <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
      <div class="clear">        
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><h2 class="no-margin no-padding">{$node.data_map.name.data_text}</h2></div>
        {def $user = fetch('user', 'current_user')}
          {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 block-right text-right">
              <form method="post" action="/content/action" class="float-right container-padding-left">
                <input type="hidden" name="TopLevelNode" value="{$node.node_id}" />
                <input type="hidden" name="ContentNodeID" value="{$node.node_id}" />
                <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}" />
                <button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
              </form>
           </div>
          {/if}
        {undef $user}
      </div>
      <div class="clear">
        {attribute_view_gui attribute=$node.data_map.description}
        {attribute_view_gui attribute=$node.data_map.short_description}
      </div>
	  </div>
  </div>
</div>
