<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">
	<head>

		{* Some Basket Logic *}
		{def $basket_is_empty   = cond( $current_user.is_logged_in, fetch( shop, basket ).is_empty, 1 )
			 $user_hash         = concat( $current_user.role_id_list|implode( ',' ), ',', $current_user.limited_assignment_value_list|implode( ',' ) )}

		{* Include Page Head Display Styles *}
		{include uri='design:page_head_displaystyles.tpl'}

		{* Set some extra cache if needed *}
		{if is_set( $extra_cache_key )|not}{def $extra_cache_key = ''}{/if}

		{* Pagedata *}
		{def $pagedata        = ezpagedata()
			 $inner_column_size = $pagedata.inner_column_size
			 $outer_column_size = $pagedata.outer_column_size}

		{* Create a cache-block *}
		{cache-block keys=array( $module_result.uri, $basket_is_empty, $current_user.contentobject_id, $extra_cache_key )}

		{* Page Styles *}
		{def $pagestyle        = $pagedata.css_classes
			 $locales          = fetch( 'content', 'translation_list' )
			 $current_node_id  = $pagedata.node_id
			 $current_node	   = fetch('content', 'node', hash('node_id', $current_node_id))}

		{* Global Variables *}
		{def $zone_width = ""}
		{def $company = ""}
		{set scope='global' $zone_width = ""}
		{set scope='global' $company = fetch('content', 'node', hash('node_id', 63))}

		{* Include Page Head *}	
		{include uri='design:page_head.tpl'}

		{* Apple Device Icons *}
		<link rel="apple-touch-icon" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-dhc-logo.png">
		
		{* Include Stylesheets *}
		{include uri='design:page_head_style.tpl'}

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		{* Enable JQuery and Bootstrap *}
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

		{* Enable JavaScript *}
		<link rel="stylesheet" href={"javascript/mmenu/src/css/jquery.mmenu.all.css"|ezdesign}>
		<link rel="stylesheet" href={"javascript/pgwslider/pgwslider.min.css"|ezdesign}>
		<script type="text/javascript" src={"javascript/mmenu/src/js/jquery.mmenu.min.all.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/mmenu.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/orientation.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/pgwslider/pgwslider.min.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/facebook.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/dropdown.js"|ezdesign}></script>

	</head>
	
	<body class="bg-grey font-family-bookman-old {$#company.data_map.link_color_menu.data_text}">
	<div id="fb-root"></div>

		<div class="container-fluid website">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{* Include Headers *}
			{include uri='design:page_header.tpl'}

			{* Include Standard Zones *}
			{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'sort_by', array('priority', true()) ))}
			{if $zones}
				{foreach $zones as $zone}
					{*include uri="design:newscenter/zone/zone.tpl" zone=$zone*}
				{/foreach}
			{/if}

		</div>

		<div class="container-fluid bg-black link-color-white nav-padding-bottom-4">
			<div class="container">
				<footer>
					{* Include Footer Zone *}
					{def $zones = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone_footer')))}
					{if $zones}
						{foreach $zones as $zone}
							{*include uri="design:newscenter/zone/zone.tpl" zone=$zone*}
						{/foreach}
					{/if}
					<div class="bg-granate">&nbsp;</div>
					<div class="col-lg-12 nav-padding-bottom-4">
						<span class="link-color-white pull-left">{'&copy;opyright'|upfirst()} {currentdate()|datetime('custom', '%Y')} Maltimportören Stockholm</span>
						<span class="link-color-white pull-right">Tjädervägen 1, 141 72 Segeltorp | Tel: <a href="tel:086462600">08 - 646 26 00</a> | E-postadress: <a href="mailto:info@maltimportoren.se">info@maltimportoren.se</a></span>
					</div>
				</footer>
			</div>
		</div>

		{* Check if webshop is active *}
		{if $#company.data_map.webshop_active.value}
			{* Include Basket *}
			{include uri="design:newscenter/widget/webshop/basket.tpl"}
		{/if}

	</body>
</html>