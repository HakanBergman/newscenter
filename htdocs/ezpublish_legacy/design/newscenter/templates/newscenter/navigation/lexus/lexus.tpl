<div class="{$menusettings.0.data_map.background_color_logotype.data_text} navigation-box">
    <div class="container">
        {include uri="design:page_header_logo.tpl" menusettings=$menusettings height="max-height-1-em" width="1"}
        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 container-padding-left-4">
            {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link'), 'sort_by', array('priority', true()) ))}
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

{def $submenu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_catalogue'), 'sort_by', array('priority', true()) ))}
  {if $submenu_items}
    <div class="main font-family-open-sans font-size-24-px {$menusettings.0.data_map.background_color.data_text}">
      <nav class="cbp-hsmenu-wrapper {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text} text-transform-upper-case" id="cbp-hsmenu-wrapper">
        <div class="cbp-hsinner navigation-box">
          <ul class="cbp-hsmenu container link-color-black">
            {foreach $submenu_items as $submenu}
              <li>
                <a href="#" class="nav-padding-right no-background hover container-padding-top-05">
                  <div class="pull-left font-weight-200 container-padding-left">{$submenu.name|wash()}</div>
                  <div class="pull-right font-weight-200">
                    <span class="glyphicon glyphicon-menu-down container-padding-left"></span>
                  </div>
                </a>
                <ul class="cbp-hssubmenu bg-white navigation-box container-margin-top-1-px">
                  <div class="container">
                    <div class="col-lg-12">
                      <div class="edit font-size-12-px container-padding-top">
                        <div class="pull-right">
                          <span class="glyphicon glyphicon-pencil text-primary container-padding-top"></span>
                          <a href="/{concat('content/edit/', $submenu.contentobject_id)}" class="text-decoration-none container-padding-left container-padding-right" title="Redigera {$submenu.name|wash()}">Redigera {$submenu.name|wash()}</a>
                          <form method="post" action="/content/action" class="float-right container-padding-left">
                            <input type="hidden" name="TopLevelNode" value="{$submenu.node_id}" />
                            <input type="hidden" name="ContentNodeID" value="{$submenu.node_id}" />
                            <input type="hidden" name="ContentObjectID" value="{$submenu.contentobject_id}" />
                            <button type="submit" name="ActionRemove" class="btn btn-danger glyphicon glyphicon-remove container-padding-left"></button>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                </ul>
            </li>
            {/foreach}
          </ul>
        </div>
      </nav>
    </div>  
  {/if}
{undef $submenu_items}

{literal}
  <script>
    $(document).ready(function () {
      var menu = new cbpHorizontalSlideOutMenu( document.getElementById( 'cbp-hsmenu-wrapper' ) );
    });
  </script>
{/literal}