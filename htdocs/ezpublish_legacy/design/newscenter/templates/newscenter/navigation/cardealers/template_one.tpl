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
          <ul class="cbp-hsmenu container {$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
            {foreach $submenu_items as $submenu}
              <li>
                <a href="#{$submenu.name|wash()|explode(' ')|implode('')|downcase()}" id="menu_id_{$submenu.contentobject_id}" class="nav-padding-right no-background hover container-padding-top-05 slidedown" data-background="bg-white">
                  <div class="pull-left font-weight-200 container-padding-left">{$submenu.name|wash()}</div>
                  <div class="pull-right font-weight-200">
                    <span class="glyphicon glyphicon-menu-down container-padding-left"></span>
                    <span class="glyphicon glyphicon-menu-up container-padding-left hide"></span>
                  </div>
                </a>
                <ul class="cbp-hssubmenu bg-white navigation-box container-margin-top-1-px container-padding-top container-padding-bottom container-padding-right-2">                 
                  {def $user = fetch('user', 'current_user')}
                    {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
                      <div class="container admin-panel">
                        <div class="col-lg-12">
                          <div class="edit font-size-12-px link-color-black container-padding-top">
                            <div class="pull-left">
                              <form action="/content/action" method="post" class="container-padding-right">
                                <input type="hidden" value="product_list" name="ClassIdentifier" />
                                <input type="hidden" class="input-zone-id" value="{$submenu.node_id}" name="NodeID" />
                                <input type="hidden" value="swe-SE" name="ContentLanguageCode" />
                                <button type="submit" name="NewButton" class="btn btn-success glyphicon glyphicon-file container-padding-left"></button>
                              </form>                                                     
                            </div>
                            <div class="pull-right">                         
                              <a href="/content/edit/{$submenu.contentobject_id}" title="Redigera {$submenu.name|wash()}" class="btn btn-info glyphicon glyphicon-edit"></a>
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
                    {/if}
                  {undef $user}
                  {def $grandchildren = fetch('content', 'list', hash('parent_node_id', $submenu.node_id))}
                    {foreach $grandchildren as $grandchild}
                      <li>
                        <a href="{$grandchild.url|ezurl('no', 'full')|downcase()}" title="{$grandchild.name|wash()}" class="line-height-1-em">
                          <div class="col-lg-4 no-margin no-padding text-align-left">
                            <div class="container-padding-top"><strong>{$grandchild.data_map.name.data_text|wash()}</strong></div>
                            <div class="font-size-14-px font-weight-normal">{$grandchild.data_map.car_from_price.data_text} {$grandchild.data_map.extra_attribute_two.data_text}</div>
                          </div>
                          <div class="col-lg-8 no-margin no-padding text-align-left">
                            <img src="/{$grandchild.data_map.image.content.original.full_path}" class="img-responsive container-padding-bottom-05 container-padding-top-05" alt="{$grandchild.name|wash()}"/>
                          </div>                            
                        </a>
                      </li>
                    {/foreach}
                  {undef $grandchildren}
                  {*
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
                  *}
                </ul>
            </li>
            {/foreach}
          </ul>
        </div>
      </nav>
    </div>

    {literal}
    <script>
      $(document).ready(function () {
      var menu = new cbpHorizontalSlideOutMenu( document.getElementById( 'cbp-hsmenu-wrapper' ) );
      });
    </script>
    {/literal}

{/if}
{undef $submenu_items}

