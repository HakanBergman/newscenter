<div class="{if $menusettings.0.data_map.show_fullscreen.value}container-fluid{else}container{/if} {$menusettings.0.data_map.background_color_logotype.data_text}">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
      {include uri="design:page_header_logo.tpl" menusettings=$menusettings width=12}
      {if $menusettings.0.data_map.show_search.value}{include uri="design:page_header_searchbox.tpl"}{/if}
    </div>
  </div>
</div>

{def $menu_items = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('contact_list', 'news_list', 'website', 'link', 'product_catalogue'), 'sort_by', array('priority', true()) ))}
  {if $menu_items}
    <div class="{if $menusettings.0.data_map.show_fullscreen.value}container-fluid{else}container{/if} {$menusettings.0.data_map.background_color.data_text} navigation-box">
      <div class="container">
        <nav role="navigation" class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text}">
          <div class="navbar no-margin no-padding">
              <ul class="nav navbar-nav no-padding width-100-percent container-padding-right"> 
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
            			{if $#company.data_map.webshop_active.value}
				            {* Include Basket *}
				            <li class="float-right">
                      {def $basket=fetch( 'shop', 'basket' )} 
                      <a href="#basket" title="Varukorg"><span class="glyphicon glyphicon-shopping-cart"> <span class="cart_total_items">{$basket.items|count()}</span></span></a>
                      {$basket|attribute(show, 1)}
                      <nav id="basket">                                                   
                          <div class="col-lg-12 container-padding-top-3 link-color-white link-color-white hover">
                            <div class="col-lg-12">
                               <a href="#close" title="Stäng varukorg" class="float-right"><span class="glyphicon glyphicon-remove close-shop-menu"></span></a>
                            </div>
                            <div class="col-lg-12 container-padding-top font-size-16-px"><strong>Din varukorg</strong></div>
                            {switch match=$basket.items|count()}
                              {case match=0}
                                <div class="col-lg-12">Du har 0 produkter i varukorgen.</div>
                              {/case}
                              {case match=1}
                                <div class="col-lg-12"><strong>{$basket.items|count()}</strong> produkt i varukorgen.</div>
                              {/case}
                              {case}
                                <div class="col-lg-12"><strong>{$basket.items|count()}</strong> produkter i varukorgen.</div>
                              {/case}
                            {/switch}
                            <div class="col-lg-12 container-margin-top">
                              {foreach $basket.items as $item}
                                <div class="col-lg-12 no-margin no-padding container-padding-bottom-2" id="container_id_{$item.id}">
                                  <div class="col-lg-3 no-padding no-margin">
                                    {if $item.item_object.data_map.image.has_content}
                                      <img src="/{$item.item_object.data_map.image.content.original.full_path}" alt="{$item.item_name|wash()}"></img>
                                    {/if}
                                  </div>
                                  <div class="col-lg-9 no-padding no-margin">
                                    <div class="col-lg-12 no-margin no-padding"><strong>{$item.object_name|wash()}</strong></div>
                                    <div class="col-lg-12 no-margin no-padding">
                                      <div class="col-lg-6 no-margin no-padding"><span class="item_count">{$item.item_count}</span> x <span class="item_price">{$item.price_inc_vat}</span> SEK</div>
                                      <div class="col-lg-6 no-margin no-padding"><strong>Totalt:</strong> <span class="total_price">{$item.item_count|mul($item.price_inc_vat)}</span> SEK</div>
                                    </div>
                                    <form method="post" action="/shop/basket">
                                      <div class="col-lg-12 no-margin no-padding">
                                        <div class="col-lg-6 no-margin no-padding container-padding-right">
                                            <input type="hidden" name="ProductItemIDList[]" value="{$item.id}" />
                                            <input type="hidden" name="RedirectURI" value="{$current_node.url|ezurl('no', 'full')}" />
                                            <input type="text" class="form-control" value="{$item.item_count}" name="ProductItemCountList[]" id="product_number_{$item.id}" />
                                        </div>
                                        <div class="col-lg-6 no-margin no-padding">
                                          <button class="btn btn-primary updatebasket" product-id="{$item.id}" product-price="{$item.price_inc_vat}" type="submit" name="StoreChangesButton">Uppdatera</button>
                                          <input type="checkbox" name="RemoveProductItemDeleteList[]" value="{$item.id}" checked="1" class="hide" />
                                          <button class="btn btn-danger glyphicon glyphicon-remove" type="submit" name="RemoveProductItemButton"></button>
                                        </div>
                                      </div>
                                    </form>                                  
                                  </div>
                                </div>
                              {/foreach}                              
                            </div>
                            <div class="col-lg-12 absolute top-80-percent">
                              <hr />
                              <div class="col-lg-5 no-padding no-margin">Totalt</div>
                              <div class="col-lg-7">
                                <div class="col-lg-12"><span class="total_sum_incl_vat">{$basket.total_inc_vat}</span> SEK inkl moms</div>
                                <div class="col-lg-12">Varav <span class="total_sum_excl_vat">{round($basket.total_inc_vat|sub($basket.total_inc_vat|mul(0.8)))}</span> SEK i moms</div>
                              </div>
                              <div class="col-lg-12 text-center container-padding-top no-padding no-margin"><a href="/shop/userregister" title="Bekräfta order"><button class="btn btn-primary min-width-80-percent">Till kassan</button></a></div>                              
                            </div>                            
                          </div>                        
                      </nav>
                      {undef $basket}
                    </li>
			            {/if}                   
              </ul>              
          </div>
        </nav>
      </div>
    </div>
  {/if}
{undef $menu_items}