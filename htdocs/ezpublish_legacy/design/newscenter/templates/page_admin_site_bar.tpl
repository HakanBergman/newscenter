<div class="container">
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
        {case match='contact'}
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
        {case match='website'}
          <h2>Redigera Innehåll</h2>
          <div class="col-lg-12">
            <div class="edit">
              <span class="glyphicon glyphicon-pencil text-primary"></span>
              <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
            </div>
          </div>
        {/case}        
      {/switch}
    </div>
  </div>
</div>


