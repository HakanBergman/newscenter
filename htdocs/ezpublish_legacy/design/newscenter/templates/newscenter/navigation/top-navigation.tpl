
<div class="container-fluid {$#company.data_map.background_color_logo.data_text}">  
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
      <ul class="nav navbar-nav">
        <li class="dropdown yamm-fw">
          <a href="#" data-toggle="dropdown" class="dropdown-toggle">Grid<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li class="grid-demo">
              <div class="row">
                <div class="col-lg-12">
                  Undermeny
                </div>
              </div>
            </li>
          </ul>
        </li>      
      </ul>



      <nav>
          <ul class="no-padding nav navbar-nav">             
            {foreach $menu_items as $item}              
              <li class="dropdown yamm-fw no-padding nav-padding-top-05 nav-padding-bottom-05 float-left {$#company.data_map.link_color_menu.data_text} {$#company.data_map.link_color_menu_active.data_text} {$#company.data_map.link_color_menu_mouseover.data_text}">
                {def $subitems = fetch('content', 'list', hash('parent_node_id', $item.node_id, 'sort_by', array('name', true()) ))}
                  <a data-toggle="dropdown" class="dropdown-toggle font-size-nav-link font-weight-bold nav-padding-right-3{if $current_node.path_array|contains($item.node_id)} active{/if}" href="#{$item.name|wash()}">{$item.name|wash()}{if $subitems|count()} <span class="caret"></span>{/if}</a>
                  {if $subitems|count()}
                    <ul class="submenu dropdown-menu">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 {$#company.data_map.background_color_menu.data_text} {$#company.data_map.link_color_menu.data_text} min-height-23 nav-margin-top-05 no-padding nav-padding-left-4 nav-padding-right-3 nav-padding-top">
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
                              <div class="{$subclass} nav-padding-top nav-padding-bottom {$#company.data_map.link_color_menu_mouseover.data_text}">
                                <a href="{$subitem.url|ezurl('no', 'full')}" title="{$subitem.name|wash()}">{$subitem.name|wash()}</a>
                                {def $grandchild = fetch('content', 'list', hash('parent_node_id', $subitem.node_id))}
                                  {if $grandchild|count()}
                                    {foreach $grandchild as $child}
                                     <div class="nav-padding-left {$#company.data_map.link_color_menu_mouseover.data_text}">
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




