{* Define the currency *}
{def  $currency = fetch( 'shop', 'currency', hash( 'code', $basket.productcollection.currency_code ) )
      $locale = false()
      $symbol = false()}
{if $currency}
  {set  locale = $currency.locale
        symbol = $currency.symbol}
{/if}


{section name=Basket show=$basket.items}
  {section name=ProductItem loop=$basket.items sequence=array(bgdark, bglight)}
  {/section}
{/section}  
  <nav class="navbar navbar-fixed-bottom {$#company.data_map.background_color_widget_basket.data_text}">
    <div class="container-fluid nav-padding-top nav-padding-bottom {$#company.data_map.background_color_widget_basket.data_text} {$#company.data_map.link_color_widget_basket.data_text}">
      <div class="container">
        <div class="col-lg-4">
          <span class="pull-left">Du har {$basket.items|count()} varor i varukorgen</span>
        </div>
        <div class="col-lg-4">
          <span>Totalt {$total_inc_shipping_ex_vat|l10n( 'currency', $locale, $symbol )} SEK exkl moms {$total_inc_shipping_inc_vat|l10n( 'currency', $locale, $symbol )} SEK inkl moms)</span>
        </div>
        <div class="col-lg-4">
          <span class="pull-right"><a href="/shop/basket/" alt="Till varukorgen">Till varukorgen</a></span>
        </div>
      </div>
    </div>
  </nav>
