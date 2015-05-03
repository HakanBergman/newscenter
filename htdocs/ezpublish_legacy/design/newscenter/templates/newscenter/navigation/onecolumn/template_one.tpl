<div class="container-fluid {$menusettings.0.data_map.background_color_logotype.data_text}">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
      {include uri="design:page_header_logo.tpl" menusettings=$menusettings width=12}
      {if $menusettings.0.data_map.show_search.value}{include uri="design:page_header_searchbox.tpl"}{/if}
    </div>
  </div>
</div>

{def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
  {if $menu_items}
    <div class="container-fluid {$menusettings.0.data_map.background_color.data_text} navigation-box">
      <div class="container">
        <nav role="navigation" class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
          <div class="navbar no-margin no-padding">
              <ul class="nav navbar-nav no-padding"> 
                  {foreach $menu_items as $item}
                      {switch match=$item.class_identifier}
                        {case match='link'}
                          <li><a class="font-size-nav-link font-weight-bold nav-padding-right-3 no-background hover" href="{$item.data_map.location.value|ezurl('no', 'full')}"{if $item.data_map.open_in_new_window.value} target="_blank"{/if}>{$item.name|wash()}</a></li>                
                        {/case}
                        {case}
                          <li><a class="font-size-nav-link font-weight-bold nav-padding-right-3 no-background hover" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a></li>                
                        {/case}
                      {/switch}
                  {/foreach}
              </ul>
          </div>
        </nav>
      </div>
    </div>
  {/if}
{undef $menu_items}