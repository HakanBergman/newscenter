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
                  <li class="{$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">
                    <span class="flag flag-icon-background {$grandchild.data_map.country_class.data_text} inline-block height-105-em width-1-em">&nbsp;</span>
                    <a href="{$grandchild.url|ezurl('no', 'full')}" class="font-weight-normal" title="{$grandchild.name|wash()}">{$grandchild.name|wash()}</a>
                    {if $grandchild.children|count()}
                      HITTADE HIT
                      <div class="nav-padding-left {$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">      
                        {foreach $grandchild as $grandgrandchild}
                          <div>
                            <a href="{$grandgrandchild.url|ezurl('no', 'full')}" class="font-weight-normal" title="{$grandgrandchild.name|wash()}">
                              - <span class="nav-padding-left">{$grandgrandchild.name|wash()}</span>
                            </a>
                          </div>
                        {/foreach}
                      </div>
                    {/if}
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

            


