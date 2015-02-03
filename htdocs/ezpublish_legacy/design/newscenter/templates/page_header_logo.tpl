<div class="span8"> LOGO
    <a href="{'/'|ezurl( 'no' )}" title="{ezini('SiteSettings','SiteName')|wash}" class="logo"><img src="{'logo-ez.png'|ezimage( 'no' )}" alt="{ezini('SiteSettings','SiteName')|wash}" /></a>
</div>

<div class="container-fluid {$#company.data_map.background_color_logo.data_text}">
  <div class="container">
    <a href="{$#company.url|ezurl('no', 'full')}" title="{$#company.name|wash()}">{attribute_view_gui attribute=$#company.data_map.company_logo}</a>
  </div>
</div>