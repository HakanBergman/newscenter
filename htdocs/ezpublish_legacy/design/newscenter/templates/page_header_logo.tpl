<div class="container-fluid {$#company.data_map.background_color_logo.data_text}">
  <div class="container">
    <a href="{$#company.url|ezurl('no', 'full')}" title="{$#company.name|wash()}">{$#company.data_map.company_logo.content|attribute(show, 1)}</a>
  </div>
</div>