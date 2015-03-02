<div class="container">
  
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}

  <h2>
    <div class="flag flag-icon-background {$node.data_map.country_class.data_text} width-1-em height-1-em float-left"></div>
    <span class="container-padding-left">{$node.name|wash()}</span>
  </h2>
  {if $node.children}
    {foreach $node.children as $child}
        {switch match=$child.class_identifier}
          {case match='product_list'}
            {switch match=$node.children|count()}
              {case match=2}
                {def $column_size = "col-lg-6 col-md-6 col-sm-12 col-xs-12"}
              {/case}
              {case match=3}
                {def $column_size = "col-lg-4 col-md-4 col-sm-12 col-xs-12"}
              {/case}
              {case match=4}
                {def $column_size = "col-lg-3 col-md-4 col-sm-12 col-xs-12"}
              {/case}
              {case}
                {def $column_size = "col-lg-12"}
              {/case}
            {/switch}
            <div class="{$column_size} container-padding-top">
              <h3 class="container-padding-left container-padding-bottom float-left no-margin {$child.data_map.link_color.data_text} {$child.data_map.hover_color.data_text}">
                <a href="{$child.url|ezurl('no', 'full')}" title="{$child.name|wash()}">{$child.name|wash()}</a>
              </h3>
              {foreach $child.children as $grandchild}
                <div class="clear">
                  <h5 class="container-padding-left-4 font-size-product-link font-weight-normal no-margin {$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">
                    {if $grandchild.class_identifier|eq('product')}<img class="img-responsive max-width-2-em float-left" src="/{$grandchild.data_map.image.content.original.full_path}" alt="{$grandchild.name|wash()}"></img>{/if}
                    <a href="{$grandchild.url|ezurl('no', 'full')}" title="{$grandchild.name|wash()}" class="container-padding-left font-weight-normal">{$grandchild.name|wash()}</a>
                  </h5>
                </div>
              {/foreach}
            </div>
          {/case}
      {/switch}
    {/foreach}
  {/if}
</div>

