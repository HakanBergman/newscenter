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

<div class="{$menusettings.0.data_map.background_color.data_text} navigation-box container-margin-bottom-1-px">
  <div class="container">
    <nav role="product_navigation" class="link-color-black {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text} text-transform-upper-case">
      <div class="navbar no-min-height no-margin no-padding">
        <ul class="nav nav-slidedown navbar-nav no-padding col-lg-12 font-family-open-sans font-size-24-px">
          <li class="col-lg-4 no-padding no-margin border-lexus nav-padding-bottom-05">
            <a class="nav-padding-lexus no-background hover slidedown" href="#modeller" id="modeller" data-href="menu-slidedown" data-reset="nav-slidedown">
              <div class="pull-left font-weight-200 container-padding-left">
                Bilmodeller
              </div>
              <div class="pull-right font-weight-200">
                <span class="glyphicon glyphicon-menu-down"></span>
                <span class="glyphicon glyphicon-menu-up hide-unimportent"></span>
              </div>
            </a>
          </li>
          <li class="col-lg-4 no-padding no-margin border-lexus nav-padding-bottom-05">
            <a class="nav-padding-lexus no-background hover slidedown" href="#tjaenstebilar" id="tjaenstebilar" data-href="menu-slidedown" data-reset="nav-slidedown">
              <div class="pull-left font-weight-200 container-padding-left">
                Tjänstebilar
              </div>
              <div class="pull-right font-weight-200 container-padding-left">
                <span class="glyphicon glyphicon-menu-down"></span>
                <span class="glyphicon glyphicon-menu-up hide-unimportent"></span>
              </div>
            </a>
          </li>
          <li class="col-lg-4 no-padding no-margin border-lexus nav-padding-bottom-05">
            <a class="nav-padding-lexus no-background hover slidedown" href="#begagnat" id="begagnade-bilar" data-href="menu-slidedown" data-reset="nav-slidedown">
              <div class="pull-left font-weight-200">
                Begagnade bilar
              </div>
              <div class="pull-right font-weight-200">
                <span class="glyphicon glyphicon-menu-down"></span>
                <span class="glyphicon glyphicon-menu-up hide-unimportent"></span>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </nav>    
  </div>
</div>

<div class="{$menusettings.0.data_map.background_color.data_text} bg-white container-margin-bottom-1-px navigation-box hide-unimportent modeller">
  <div class="container">
    Data saknas
  </div>
</div>

<div class="{$menusettings.0.data_map.background_color.data_text} bg-white container-margin-bottom-1-px navigation-box hide-unimportent tjaenstebilar">
  <div class="container">
    Data saknas
  </div>
</div>

<div class="{$menusettings.0.data_map.background_color.data_text} bg-white container-margin-bottom-1-px navigation-box hide-unimportent begagnade-bilar">
  <div class="container">
    Data saknas
  </div>
</div>


<div class="main">
  <nav class="cbp-hsmenu-wrapper {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text} text-transform-upper-case" id="cbp-hsmenu-wrapper">
    <div class="cbp-hsinner">
      <ul class="cbp-hsmenu">
        <li>
          <a href="#">Bilmodeller</a>
          <ul class="cbp-hssubmenu link-color-black bg-white navigation-box">
            <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
            <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
            <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
            <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
            <li><a href="#"><img src="images/1.png" alt="img01"/><span>Delicate Wine</span></a></li>
          </ul>
        </li>
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