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
            <h3 class="{$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}"><a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a></h3>
            <div class="{$child.data_map.background_color.data_text} max-height-1">&nbsp;</div>
            {if $child.children|count()}              
              <ul>
                {foreach $child.children as $grandchild}
                  {$grandchild.data_map|attribute(show, 1)}
                  <li class="{$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">
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
              {/foreach}
            </ul>
          {/if}
          </div> 
        {/case} 
      {/switch}
    {/foreach}
  {/if}    
</div>

            


