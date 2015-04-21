<div class="col-lg-{$width} col-md-{$width} col-sm-{$width} col-xs-{$width} no-padding no-margin">
  <h1 class="no-padding no-margin">
    {if $menusettings.0.data_map.logotype.has_content}
      {def $sitesettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
        <a href="{$#company.url|ezurl('no', 'full')}" title="{$sitesettings.0.data_map.site_title.data_text|wash()}">
          <img src="/{$menusettings.0.data_map.logotype.content.original.full_path}" alt="{$sitesettings.0.data_map.site_title.data_text|wash()}" class="img-responsive max-height-2-em"></img>        
        </a>
      {undef $sitesettings}
    {/if}
  </h1>
</div>

