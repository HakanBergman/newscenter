<nav id="topNav-one" class="grey">
	<div class="row">
      {* Include Company Logotype *}
      {include uri="design:page_header_logo.tpl"}
      <div class="col-lg-5 col-md-5 no-margin no-padding">
        {* Create the menu *}
        {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
        {if $menu_items}
          <ul class="nav-padding-top-nine-percent">
            {foreach $menu_items as $item}
             {switch match=$item.class_identifier}
                {case match='link'}
                  <li><a href="{$item.data_map.location.value|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                {/case}
                {case}
                  <li><a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a></li>
                {/case}
            {/switch}
           {/foreach}
          </ul>
         {/if}
         {undef $menu_items}
      </div>
	</div>
</nav>



<div class="top-headers-wrapper">




  <header id="masthead" class="site-header header-default" role="banner">

    <div class="row">

      <div class="large-12 columns">

        <div class="site-header-wrapper">

          <div class="site-branding">


            {include uri="design:page_header_logo.tpl"}


          </div>
          <!-- .site-branding -->

          <div id="site-menu">

            <nav id="site-navigation" class="main-navigation" role="navigation">
              <ul id="menu-main-navigation">
                <li id="menu-item-3700" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-190 current_page_item menu-item-3700">
                  <a href="http://lerue.se/">Hem</a>
                </li>
                <li id="menu-item-1477" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1477">
                  <a href="/product-category/herr/">Herr</a>
                </li>
                <li id="menu-item-1478" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1478">
                  <a href="/product-category/dam/">Dam</a>
                </li>
                <li id="menu-item-3954" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-3954">
                  <a>Lookbook</a>
                  <ul class="sub-menu">
                    <li id="menu-item-3701" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3701">
                      <a href="http://lerue.se/lookbook-ss-2014/">SS 14</a>
                    </li>
                    <li id="menu-item-1208" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1208">
                      <a href="http://lerue.se/lookbook/">FW 13/14</a>
                    </li>
                  </ul>
                </li>
                <li id="menu-item-1206" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1206">
                  <a href="http://lerue.se/about-us/">Om oss</a>
                </li>
                <li id="menu-item-3217" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3217">
                  <a href="http://lerue.se/contact/">Kontakt</a>
                </li>
              </ul>
            </nav>
            <!-- #site-navigation -->

            <div class="site-tools">
              <ul>

                <li class="mobile-menu-button">
                  <a>
                    <i class="getbowtied-icon-menu"></i>
                  </a>
                </li>




                <li class="shopping-bag-button">
                  <a>
                    <i class="getbowtied-icon-shop"></i>
                  </a>
                  <span class="shopping_bag_items_number">0</span>
                </li>

                <li class="search-button">
                  <a>
                    <i class="getbowtied-icon-search"></i>
                  </a>
                </li>

              </ul>
            </div>

            <div class="site-search">
              <div class="widget woocommerce widget_product_search">
                <form role="search" method="get" id="searchform" action="http://lerue.se/">
                  <div>
                    <label class="screen-reader-text" for="s">Sök efter:</label>
                    <input type="text" value="" name="s" id="s" placeholder="Sök efter produkter">
                      <input type="submit" id="searchsubmit" value="Sök">
                        <input type="hidden" name="post_type" value="product">
                          <div class="search-but-added">
                            <i class="getbowtied-icon-search"></i>
                          </div>
                  </div>
                </form>
                <div class="search-but-added">
                  <i class="getbowtied-icon-search"></i>
                </div>
              </div>
            </div>
            <!-- .site-search -->

          </div>
          <!-- #site-menu -->

          <div class="clearfix"></div>

        </div>
        <!-- .site-header-wrapper -->

      </div>
      <!-- .columns -->

    </div>
    <!-- .row -->

  </header>
  <!-- #masthead -->
</div>