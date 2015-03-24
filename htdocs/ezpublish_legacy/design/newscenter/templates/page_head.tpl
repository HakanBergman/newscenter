{default enable_help=true() enable_link=true() canonical_link=true()}
{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}

	{def $title = ""}
	{def $sitemap = $module_result.path|extract(1)}
		{foreach $sitemap as $site}
			{def $sitemap_name = fetch('content', 'node', hash('node_id', $site.node_id))}
				{if $company.node_id|eq($site.node_id)}
					{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
						{set $title = $title|append($sitesettings.0.data_map.site_title.data_text)}
					{undef $sitesettings}
				{else}
					{set $title = $title|prepend(concat($sitemap_name.name|wash(), ' / '))}
				{/if}
			{undef $sitemap_name}
		{/foreach}
	{undef $sitemap}
    <title>{$title|wash()}</title>

    {if and(is_set($#Header:extra_data),is_array($#Header:extra_data))}
      {section name=ExtraData loop=$#Header:extra_data}
      {$:item}
      {/section}
    {/if}

    {* check if we need a http-equiv refresh *}
    {if $site.redirect}
		<meta http-equiv="Refresh" content="{$site.redirect.timer}; URL={$site.redirect.location}" />
    {/if}

    {foreach $site.http_equiv as $key => $item}
        <meta name="{$key|wash}" content="{$item|wash}" />

    {/foreach}

	{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
		<meta name="author" content="Datadelen Webb Center" />
		<meta name="copyright" content="Datadelen Webb Center" />
		{if $company.node_id|eq($pagedata.node_id)}
			<meta name="description" content="{$sitesettings.0.data_map.seo_description.data_text|wash()}" />
			<meta name="keywords" content="{$sitesettings.0.data_map.seo_tags.data_text|wash()}" />
		{else}
			<meta name="description" content="{$node.data_map.seo_description.data_text|wash()}" />
			<meta name="keywords" content="{$node.data_map.seo_tags.data_text|wash()}" />
		{/if}
	{undef $sitesettings}

    <meta name="MSSmartTagsPreventParsing" content="TRUE" />
    <meta name="generator" content="eZ Publish" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-title" content="{$title|wash()}">

{if $canonical_link}
    {include uri="design:canonical_link.tpl"}
{/if}

{if $enable_link}
    {include uri="design:link.tpl" enable_help=$enable_help enable_link=$enable_link}
{/if}

{/default}
