<div class="row bg-white widget-product">
  {def $number_of_products = $block.data_map.shown_products_per_row.content.0}
  {set $number_of_products = $block.data_map.shown_products_per_row.class_content.options.$number_of_products.name}
  {$number_of_products} asdasd
  {switch match = $number_of_products}
  {case match=4}
  {def $class = "col-lg-3"}
  {/case}
  {case match=6}
  {def $class = "col-lg-2"}
  {/case}
  {/switch}
  <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>
    <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>  
    <div class="{$class}">
      <div class="media">
        <img class="img-responsive thumbnail" src="http://dev.datadelenhc.com/new/img/940x392.jpg" alt="Cēsu Pilsener">
          <div class="media-body">
            <h4 class="media-heading"><small>Cēsu Pilsener</small></h4>
            text
          </div>
        </div>
    </div>   
  {undef $number_of_products $class}
</div>