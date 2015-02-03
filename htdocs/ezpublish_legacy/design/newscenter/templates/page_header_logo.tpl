<div class="container-fluid {$#company.data_map.background_color_logo.data_text}">
  <div class="container">
    <a href="{$#company.url|ezurl('no', 'full')}" title="{$#company.name|wash()}"><img src="/{$#company.data_map.company_logo.content.original.full_path}" alt="{$#company.name|wash()}" class="img-responsive"></a>
    {$#company.data_map.company_logo.content.original|attribute(show, 1)}
  </div>
</div>