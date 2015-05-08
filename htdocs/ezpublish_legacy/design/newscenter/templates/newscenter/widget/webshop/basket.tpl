{* Define the currency *}
{def $basket=fetch( 'shop', 'basket' )}
  <nav class="navbar navbar-fixed-bottom {$#company.data_map.background_color_widget_basket.data_text}">
    <div class="container-fluid nav-padding-top nav-padding-bottom {$#company.data_map.background_color_widget_basket.data_text} {$#company.data_map.link_color_widget_basket.data_text}">
      <div class="container">
        <div class="col-lg-4">
          <span class="pull-left">Du har {$basket.items|count()} varor i varukorgen</span>
        </div>
        <div class="col-lg-4">
          <div class="col-lg-12"><span>Totalt {$basket.total_ex_vat|l10n( currency )}</span></div>
          <div class="col-lg-12"><span>SEK exkl moms {$basket.total_inc_vat|l10n( currency )} SEK inkl moms)</span></div>
        </div>
        <div class="col-lg-4">
          <span class="pull-right"><a href="/shop/basket/" alt="Till varukorgen">Till varukorgen</a></span>
        </div>
      </div>
    </div>
  </nav>
{undef $basket}
