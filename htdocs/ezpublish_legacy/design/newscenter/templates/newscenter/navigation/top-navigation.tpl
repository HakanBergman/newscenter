
<div class="container-fluid bg-beige-yellow">
  <div class="container">
    <div class="col-lg-12">
      {include uri="design:page_header_logo.tpl"}
    </div>
  </div>
</div>
<div class="container-fluid bg-black">
  <div class="container">
    <div class="col-lg-12 navigation-box">
      {def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
      {if $menu_items}
        <nav>
          <ul class="no-padding">
            {foreach $menu_items as $item}
              <li class="nav-padding-top-05 nav-padding-bottom-05 float-left col-lg-1-max-width">
                <a class="font-size-nav-link font-weight-bold" href="{$item.url|ezurl('no', 'full')}">{$item.name|wash()}</a>
                <ul class="dummy hidden">
                  <div class="col-lg-12 bg-black link-color-white nav-margin-top-07 no-padding">
                    <li>Test</li>
                  </div>
                </ul>
              </li>
            {/foreach}
          </ul>
        </nav>
      {/if}
    </div>
  </div>
</div>




