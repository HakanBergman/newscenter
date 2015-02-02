<div class="row bg-white widget-product">
  {$block.data_map|attribute(show, 1)}
  {def $number_of_products = $block.data_map.shown_products_per_row.content.0}
  {set $number_of_products = $block.data_map.shown_products_per_row.class_content.options.$number_of_products.name}
    <div class="col-lg-{$number_of_products}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://www.maltimportoren.se/wp-content/uploads/Pilsener.png" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="col-lg-{$number_of_products}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://www.maltimportoren.se/wp-content/uploads/Pilsener.png" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="col-lg-{$number_of_products}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://www.maltimportoren.se/wp-content/uploads/Pilsener.png" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="col-lg-{$number_of_products}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://www.maltimportoren.se/wp-content/uploads/Pilsener.png" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="col-lg-{$number_of_products}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://www.maltimportoren.se/wp-content/uploads/Pilsener.png" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>  
  {undef $number_of_products}
</div>