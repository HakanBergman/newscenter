<div class="container">
  <h2>{$node.name|wash()}</h2>
    {if $node.children}
      {foreach $node.children as $child}
        {switch match=$child.class_identifier}
          {case match='product_category'}
            {switch match=$node.children|count()}
              {case match=2}
               {def $column_size = "col-lg-6 col-md-6 col-sm-6 col-xs-12"}
              {/case}
              {case match=3}
                {def $column_size = "col-lg-4 col-md-4 col-sm-4 col-xs-12"}
              {/case}
              {case match=4}
               {def $column_size = "col-lg-3 col-md-4 col-sm-3 col-xs-12"}
              {/case}
              {case}
                {def $column_size = "col-lg-12"}
              {/case}
          {/switch}
          <div class="{$column_size} container-padding-top">

            <div class="col-lg-4 col-md-4 col-sm-4">
              <h3 class="link-color-beige-hover">
                <a href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks" title="Longdrinks">Longdrinks</a>
              </h3>
              <div class="bg-longdrink-blue max-height-1">&nbsp;</div>
                <ul>
                  <li class="link-color-beige-hover">
                    <span class="flag flag-icon-background flag-icon-lv inline-block height-105-em width-1-em">&nbsp;</span>
                    <a href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks/Lettland" class="font-weight-normal" title="Lettland">Lettland</a>
                    <div class="nav-padding-left link-color-beige-hover">
                      <div>
                        <a href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks/Lettland/Mojito" class="font-weight-normal" title="Mojito">
                          - <span class="nav-padding-left">Mojito</span>
                        </a>
                      </div>
                      <div>
                        <a href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks/Lettland/Cosmopolitan" class="font-weight-normal" title="Cosmopolitan">
                          - <span class="nav-padding-left">Cosmopolitan</span>
                        </a>
                      </div>
                      <div>
                        <a href="http://maltimportoren.datadelenhc.com/Maltimportoeren/Produkter/Longdrinks/Lettland/Margarita" class="font-weight-normal" title="Margarita">
                          - <span class="nav-padding-left">Margarita</span>
                        </a>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>            
            
            <div class="flag flag-icon-background {$child.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
            <h3 class="container-padding-left float-left no-margin {$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">
              <a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a>
            </h3>
    {foreach $child.children as $grandchild}
    {switch match=$grandchild.class_identifier}
    {case match='product_list'}
    {switch match=$grandchild.class_identifier}
    {case match='product_list'}
    <div class="row clear">
      <div class="col-lg-12 container-padding-top-05">
        <h4 class="container-padding-left-3 container-padding-bottom font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}">
          <a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}">{$grandchild.name}</a>
        </h4>
        {if $grandchild.children}
        {foreach $grandchild.children as $grandgrandchild}
        <h5 class="container-padding-left-4 font-size-product-link font-weight-normal no-margin {$grandchild.data_map.link_color.data_text} {$grandchild.data_map.hover_color.data_text}">
          {if $grandgrandchild.class_identifier|eq('product')}<img class="img-responsive max-width-2-em float-left" src="/{$grandgrandchild.data_map.image.content.original.full_path}" alt="{$grandgrandchild.name|wash()}"></img>{/if}
          <a href="{$grandgrandchild.url|ezurl('no', 'full')}" title="{$grandgrandchild.name|wash()}" class="container-padding-left font-weight-normal">{$grandgrandchild.name|wash()}</a>
        </h5>
        {/foreach}
        {/if}
      </div>
    </div>
    {/case}
    {/switch}
    {/case}
    {/switch}
    {/foreach}
  </div>
  {/case}
  {/switch}
  {/foreach}
  {/if}
</div>


