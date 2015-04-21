<div class="{$menusettings.0.data_map.background_color_logotype.data_text} navigation-box">
    <div class="container">
        {include uri="design:page_header_logo.tpl" menusettings=$menusettings height="max-height-1-em" width="1"}
        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 container-padding-left-4">
            {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
              {if $menu_items}
                <nav role="navigation" class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
                    <div class="navbar no-margin no-padding">
                        <ul class="nav navbar-nav no-padding"> 
                            {foreach $menu_items as $item}
                                <li><a class="font-size-nav-link font-weight-bold nav-padding-right-3 no-background hover" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a></li>                
                            {/foreach}
                        </ul>
                    </div>
                </nav>
              {/if}
            {undef $menu_items}
        </div>
    </div>
</div>
<div class="{$menusettings.0.data_map.background_color.data_text} navigation-box">
  <div class="container">
    <nav role="product_navigation" class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
      <div class="navbar no-margin no-padding">
        <ul class="nav navbar-nav no-padding">
              <li>
                <a class="font-size-nav-link font-weight-bold nav-padding-right-3 no-background hover" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a>
              </li>
        </ul>
        <ul class="primary c-l-container-12 clearfix" itemscope="" itemtype="http://schema.org/SiteNavigationElement">
          <li class="flush-grid-4 loaded">
            <noscript>
              &lt;a itemprop="url" data-id="CarModels_Top" href="/_nav/model-menu.tmex" class="no-js-links" target=""&gt;LEXUS MODELLER&lt;/a&gt;
            </noscript>
            <a data-id="CarModels_Top" href="/_nav/model-menu.tmex" data-href="/_nav/model-menu.tmex" class="js-links" target="" style="height: 34px;">LEXUS MODELLER</a>
          </li>
          <li class="flush-grid-4 loaded">
            <noscript>
              &lt;a itemprop="url" data-id="Tjanstebilar_Top" href="/_nav/tjanstebilar-menu.tmex" class="no-js-links" target=""&gt;TJÄNSTEBILAR&lt;/a&gt;
            </noscript>
            <a data-id="Tjanstebilar_Top" href="/_nav/tjanstebilar-menu.tmex" data-href="/_nav/tjanstebilar-menu.tmex" class="js-links" target="" style="height: 34px;">TJÄNSTEBILAR</a>
          </li>
          <li class="flush-grid-4 loaded">
            <noscript>
              &lt;a itemprop="url" data-id="WorldOfLexus_Top" href="/_nav/main-menu.tmex" class="no-js-links" target=""&gt;LEXUS VÄRLD&lt;/a&gt;
            </noscript>
            <a data-id="WorldOfLexus_Top" href="/_nav/main-menu.tmex" data-href="/_nav/main-menu.tmex" class="js-links" target="" style="height: 34px;">LEXUS VÄRLD</a>
          </li>
        </ul>
      </div>
    </nav>    
  </div>
</div>