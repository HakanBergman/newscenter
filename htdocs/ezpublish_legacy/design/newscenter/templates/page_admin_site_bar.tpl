<div class="container admin-panel hide">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container-padding-top">
    <div class="col-lg-12">
      {switch match=$current_node.class_identifier}
        {case match='article'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}
        {case match='contact_list'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}        
        {case match='news_category'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}          
        {case match='news_list'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}          
        {case match='product'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}
        {case match='product_catalogue'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}         
        {case match='product_category'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}     
        {case match='product_country'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}         
        {case match='product_list'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}          
        {case match='website'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
              <form method="post" action="/content/action" class="float-right container-padding-left">
                <input type="hidden" name="TopLevelNode" value="{$current_node.node_id}" />
                <input type="hidden" name="ContentNodeID" value="{$current_node.node_id}" />
                <input type="hidden" name="ContentObjectID" value="{$current_node.contentobject_id}" />
                <button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
              </form>
            </div>
          </div>
        {/case}        
      {/switch}
    </div>
  </div>
</div>


