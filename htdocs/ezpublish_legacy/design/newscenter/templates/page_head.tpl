{default enable_help=true() enable_link=true() canonical_link=true()}
{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}

{if is_set($module_result.content_info.persistent_variable.site_title)}
    {set scope=root site_title=$module_result.content_info.persistent_variable.site_title}
{else}
{let name=Path
     path=$module_result.path
     reverse_path=array()}
    {set path=$company.path_array}
  {section loop=$:path}
    {set reverse_path=$:reverse_path|array_prepend($:item)}
  {/section}

{set-block scope=root variable=site_title}
	{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
		{section loop=$Path:reverse_path}{$:item.text|wash}{delimiter} / {/delimiter}{/section} - {$site.title}
	{undef $sitesettings}
{/set-block}


{/let}
{/if}
    <title>
		{def $test = $company.path_array|count()}
		{def $test2 = $company.path_array|extract(2)}
		{$test2|attribute(show, 1)}
		{$company.path_array.3}
		{for 3 to $company.path_array|extract(3)|count() as $number}
			{$company.path_array.$number}
		{/for}
	</title>

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
		{foreach $site.meta as $key => $item}
			{switch match=$key}
				{case match='author'}
					<meta name="{$key|wash}" content="Datadelen Webb Center" />
				{/case}
				{case match='copyright'}
					<meta name="{$key|wash}" content="Datadelen Webb Center" />
				{/case}
				{case match='description'}
					<meta name="{$key|wash}" content="{$sitesettings.0.data_map.seo_description.data_text|wash()}" />
				{/case}
				{case match='keywords'}
					<meta name="{$key|wash}" content="{$sitesettings.0.data_map.seo_tags.data_text|wash()}" />
				{/case}
			{/switch}	
		{/foreach}	
	{undef $sitesettings}

    <meta name="MSSmartTagsPreventParsing" content="TRUE" />
    <meta name="generator" content="eZ Publish" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-title" content="{$site_title}">

{if $canonical_link}
    {include uri="design:canonical_link.tpl"}
{/if}

{if $enable_link}
    {include uri="design:link.tpl" enable_help=$enable_help enable_link=$enable_link}
{/if}

{/default}
