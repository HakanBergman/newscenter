<div class="container-fluid {$menusettings.0.data_map.background_color_logotype.data_text}">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
      {include uri="design:page_header_logo.tpl" menusettings=$menusettings}
      {include uri="design:page_header_searchbox.tpl"}
    </div>
  </div>
</div>

{def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
  {if $menu_items}
    <nav role="navigation">
      <div class="container-fluid {$menusettings.0.data_map.background_color.data_text} navigation-box">
        <div class="container">
          <div class="navbar yamm no-margin no-padding">
            <ul class="nav navbar-nav no-padding">              
              {foreach $menu_items as $item}
              {def $subitems = fetch('content', 'list', hash('parent_node_id', $item.node_id, 'class_filter_type', 'include', 'class_filter_array', array('news_category', 'product_category', 'product_country', 'website'), 'sort_by', array('name', true()) ))}
              <li class="{if $subitems|count()}dropdown yamm-fw {/if}no-padding no-margin float-left {$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$#company.data_map.link_color_menu_active.data_text} {$#company.data_map.link_color_menu_mouseover.data_text}">                  
                    <a href="{$item.url|ezurl('no', 'full')}" {if $subitems|count()}data-toggle="dropdown" {/if}class="{if $subitems|count()}dropdown-toggle {/if}font-size-nav-link font-weight-bold nav-padding-right-3 no-background{if $current_node.path_array|contains($item.node_id)} active{/if}" title="{$item.name|wash()|explode(' ')|implode('-')}">{$item.name|wash()}{if $subitems|count()} <span class="caret"></span>{/if}</a>
                    {if $subitems|count()}
                      <ul class="dropdown-menu no-background no-margin no-padding border-solid-white">
                        <div class="col-lg-12 {$#company.data_map.background_color_menu.data_text} no-margin">
                          <div class="nav-padding-left-4 nav-padding-right-3 nav-padding-top no-margin">
                            <h2 class="no-margin no-padding {$#company.data_map.link_color_menu.data_text}"><a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></h2>
                          </div>
                        </div>
                        {foreach $subitems as $subitem}
                        {switch match=$subitems|count()}
                        {case match=1}
                        {def $subclass = "col-lg-12 col-md-12 col-sm-12 col-xs-12"}
                        {/case}
                        {case match=2}
                        {def $subclass = "col-lg-5 col-md-5 col-sm-5 col-xs-5"}
                        {/case}
                        {case match=3}
                        {def $subclass = "col-lg-4 col-md-4 col-sm-4 col-xs-4"}
                        {/case}
                        {case match=4}
                        {def $subclass = "col-lg-3 col-md-3 col-sm-3 col-xs-3"}
                        {/case}
                        {case match=5}
                        {def $subclass = "col-lg-2 col-md-2 col-sm-2 col-xs-2"}
                        {/case}
                        {/switch}
                        <li>
                            <div class="row {$subclass} {$#company.data_map.background_color_menu.data_text} {$#company.data_map.link_color_menu.data_text} min-height-23 no-padding nav-padding-left-4 nav-padding-right-3 nav-padding-top no-margin">
                              <div class="col-sm-12">
                                <div class="nav-padding-top nav-padding-bottom {$#company.data_map.link_color_menu_mouseover.data_text}">
                                  {* Display a flag if needed *}
                                  {if $subitem.class_identifier|eq('product_country')}<span class="flag flag-icon-background {$subitem.data_map.country_class.data_text} inline-block height-105-em width-1-em">&nbsp;</span>{/if}
                                  <a href="{$subitem.url|ezurl('no', 'full')}" title="{$subitem.name|wash()}">{$subitem.name|wash()}</a>
                                  {def $grandchild = fetch('content', 'list', hash('parent_node_id', $subitem.node_id, 'sort_by', attribute('name', true()) ))}
                                  {if $grandchild|count()}
                                  {foreach $grandchild as $child}
                                  <div class="nav-padding-left {$#company.data_map.link_color_menu_mouseover.data_text}">
                                          {* Display a flag if needed *}
                                          {if $child.class_identifier|eq('product_country')}<span class="flag flag-icon-background {$child.data_map.country_class.data_text} inline-block height-105-em width-1-em">&nbsp;</span>{/if}
                                          <a href="{$child.url|ezurl('no', 'full')}" class="font-weight-normal" title="{$child.name|wash()}">{$child.name|wash()}</a>
                                          {def $grandgrandchildren = fetch('content', 'list', hash('parent_node_id', $child.node_id, 'sort_by', attribute('name', true()) ))}
                                          {if $grandgrandchildren|count()}
                                            <div class="nav-padding-left {$#company.data_map.link_color_menu_mouseover.data_text}">
                                              {foreach $grandgrandchildren as $grandchild}
                                                <div class="container-padding-left"><a href="{$grandchild.url|ezurl('no', 'full')}" class="font-weight-normal" title="{$grandchild.name|wash()}">{$grandchild.name|wash()}</a></div>
                                              {/foreach}
                                            </div>
                                          {/if}
                                        </div>
                                      {/foreach}
                                    {/if}
                                  {undef $grandchild}
                                </div>                                        
                              </div>
                            </div>
                          </li>
                        {/foreach}
                      </ul>
                  {/if}
                  {undef $subitems}
                </li>
              {/foreach}
            </ul>
          </div>
        </div>
      </div>
    </nav>
  {/if}
{undef $menu_items}