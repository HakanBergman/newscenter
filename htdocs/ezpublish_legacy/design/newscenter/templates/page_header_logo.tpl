<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 no-padding no-margin">
  <h1 class="no-padding no-margin">
    {if $menusettings.data_map.logotype.has_content}
      {def $sitesettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
        <a href="{$#company.url|ezurl('no', 'full')}" title="{$sitesettings.0.name|wash()}">
          <img src="/{$menusettings.data_map.logotype.content.original.full_path}" alt="{$#company.name|wash()}" class="img-responsive"></img>        
        </a>
      {undef $sitesettings}
    {/if}
  </h1>
</div>

