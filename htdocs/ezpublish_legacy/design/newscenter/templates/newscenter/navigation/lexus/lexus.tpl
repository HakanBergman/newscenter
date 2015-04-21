<div class="{$menusettings.0.data_map.background_color_logotype.data_text} {$menusettings.0.data_map.background_color.data_text} navigation-box">
    <div class="container">
        {include uri="design:page_header_logo.tpl" menusettings=$menusettings height="max-height-1-em" width="2"}
        <div class="col-lg-10 col-md-10 col-sm-9 col-xs-10">
            {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
              {if $menu_items}
                <nav role="navigation" class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
                    <div class="navbar no-margin no-padding">
                        <ul class="nav navbar-nav no-padding"> 
                            {foreach $menu_items as $item}
                                <li>
                                    <a class="font-size-nav-link font-weight-bold nav-padding-right-3 no-background hover" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a>
                                </li>                
                            {/foreach}
                        </ul>
                    </div>
                </nav>
              {/if}
            {undef $menu_items}
        </div>
    </div>
</div>