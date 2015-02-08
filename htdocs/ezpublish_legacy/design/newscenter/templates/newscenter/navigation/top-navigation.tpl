
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
              <li class="no-padding nav-padding-top-05 nav-padding-bottom-05 float-left">
                {def $subitems = fetch('content', 'list', hash('parent_node_id', $item.node_id, 'sort_by', array('name', true()) ))}
                  <a class="font-size-nav-link font-weight-bold nav-padding-right-3 link-color-yellow-active link-color-yellow-hover" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}{if $subitems|count()} <span class="caret"></span>{/if}</a>
                  <ul class="dummy hidden">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-black link-color-white nav-margin-top-05 no-padding">
                      <li>Test</li>
                    </div>
                  </ul>
                {undef $subitems}
              </li>
            {/foreach}
          </ul>
        </nav>
      {/if}
    </div>
  </div>
</div>




