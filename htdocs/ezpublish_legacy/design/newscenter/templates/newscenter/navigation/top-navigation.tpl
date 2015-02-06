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
                  <li>
                      <a href="{$item.url|ezurl('no', 'full')}" title="{$item.name|wash()}">{$item.name|wash()}</a>
                  </li>
                {/case}
            {/switch}
           {/foreach}
          </ul>
         {/if}
         {undef $menu_items}         
      </div>
	</div>
</nav>

<div class="container-fluid bg-beige">
  <div class="container">
      <ul class="box no-padding">
        <li>
          <div class="container no-padding">
            <a href="#">Test</a>
          </div>
          <ul class="dummy">
            
              <div class="container">
                <div class="col-lg-12 bg-black link-color-white no-padding">
                  <li>Test</li>
                </div>
              </div>
          </ul>
        </li>
      </ul>
  </div>
</div>




