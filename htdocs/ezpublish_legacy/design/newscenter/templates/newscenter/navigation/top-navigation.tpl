
<div class="container-fluid bg-beige-yellow">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
      {include uri="design:page_header_logo.tpl"}
      {include uri="design:page_header_searchbox.tpl"}
    </div>
  </div>
</div>
<div class="container-fluid bg-black">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 navigation-box">
      {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
      {if $menu_items}
      <nav>
          <ul class="no-padding">             
            {foreach $menu_items as $item}              
              <li class="no-padding nav-padding-top-05 nav-padding-bottom-05 float-left {$#company.data_map.link_color_menu.data_text} link-color-beige-active link-color-beige-hover">
                {def $subitems = fetch('content', 'list', hash('parent_node_id', $item.node_id, 'sort_by', array('name', true()) ))}
                  <a class="font-size-nav-link font-weight-bold nav-padding-right-3{if $current_node.path_array|contains($item.node_id)} active{/if}{if $subitems|count()} disabled{/if}" href="{$item.url|ezurl('no', 'full')}" {if $subitems|count()} data-dropdown="list-id-{$item.node_id}"{/if}>{$item.name|wash()}{if $subitems|count()} <span class="caret"></span>{/if}</a>
                  {if $subitems|count()}
                    <ul class="submenu" id="list-id-{$item.node_id}">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-black link-color-white nav-margin-top-05 no-padding">
                        {foreach $subitems as $subitem}                          
                          {def $subclass = concat("col-lg-", $subitems|count()|inc())}                           
                            <li>
                              <div class="{$subclass} nav-padding-top nav-padding-bottom link-color-beige-hover">
                                <a href="{$subitem.url|ezurl('no', 'full')}" title="{$subitem.name|wash()}">{$subitem.name|wash()}</a>
                                {def $grandchild = fetch('content', 'list', hash('parent_node_id', $subitem.node_id))}
                                  {if $grandchild|count()}
                                    {foreach $grandchild as $child}
                                     <div class="nav-padding-left link-color-beige-hover">
                                       <a href="{$child.url|ezurl('no', 'full')}" class="font-weight-normal" title="{$child.name|wash()}">{$child.name|wash()}</a>
                                     </div>
                                    {/foreach}
                                  {/if}
                                {undef $grandchild}
                              </div>
                            </li>
                          {undef $subclass}
                        {/foreach}
                      </div>
                    </ul>
                  {/if}
                {undef $subitems}
              </li>
            {/foreach}
          </ul>
        </nav>
      {/if}
    </div>
  </div>
</div>




