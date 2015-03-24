{default enable_print=true()}
{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
{$sitesettings.0|attribute(show, 1)} test
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

{$sitesettings.0.data_map|attribute(show, 1)}

<link rel="Home" href={"/"|ezurl} title="{$sitesettings.0.data_map.site_title.data_text|wash()}" />
<link rel="Index" href={"/"|ezurl} />
<link rel="Top" href={"/"|ezurl} title="{$title|wash()}" />
<link rel="Search" href={"content/advancedsearch"|ezurl} title="Sök på {$title|wash()}" />
<link rel="Shortcut icon" href="/{$sitesettings.0.data_map.icon.content.original.full_path|wash()}" type="image/x-icon" />
<link rel="Copyright" href={"/ezinfo/copyright"|ezurl} />
<link rel="Author" href={"/ezinfo/about"|ezurl} />
<link rel="Alternate" type="application/rss+xml" title="RSS" href="{'/rss/feed/my_feed'|ezurl(no)}" />

{if $enable_print}
{* Add print <link> tag in JS to be cache safe with query string (not included in cache-block key by default in pagelayout) *}
<script type="text/javascript">
(function() {ldelim}

    var head = document.getElementsByTagName('head')[0];
    var printNode = document.createElement('link');
    printNode.rel = 'Alternate';
    printNode.href = "{concat( 'layout/set/print/', $site.uri.original_uri )|ezurl( 'no' )}" + document.location.search;
    printNode.media = 'print';
    printNode.title = "{'Printable version'|i18n('design/ezdemo/link')}";
    head.appendChild(printNode);

{rdelim})();
</script>
{/if}

{/default}
{undef $sitesettings}
