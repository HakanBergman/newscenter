<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 no-padding no-margin">
  <h1 class="no-padding no-margin">
    {if $#company.data_map.company_logo.has_content}
      <a href="{$#company.url|ezurl('no', 'full')}" title="{$#company.name|wash()}">
        <img src="/{$#company.data_map.company_logo.content.original.full_path}" alt="{$#company.name|wash()}" class="img-responsive"></img>        
      </a>
    {/if}
  </h1>
</div>

