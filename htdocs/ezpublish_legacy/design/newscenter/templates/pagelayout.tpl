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
			 $current_node_id  = $pagedata.node_id}

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
		<script type="text/javascript" src={"javascript/mmenu/src/js/jquery.mmenu.min.all.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/mmenu.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/orientation.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/supersized/slideshow/js/supersized.3.2.7.min.js"|ezdesign}></script>

		{* Global Variables *}
		{def $zone_width = ""}
		{def $company = ""}
		{set scope='global' $zone_width = ""}
		{set scope='global' $company = fetch('content', 'node', hash('node_id', 61))}

	</head>
	
	<body class="bg-grey font-family-bookman-old">
	
		{* Page Landscape disable *}
		{*<div class="container">
			<div class="landscape thumbnail alert-warning hidden">
				<p>Du försöker se hemsidan i ett format som inte stöds.</p>
				<small>Det kan bero på följande orsaker:</small>
				<ul>
					<li>Du använder din enhet i landskapsläge</li>
					<li>Din webbläsare/enhet behöver uppdateras</li>
				</ul>
				<p>Om din enhet är i landskapsläge, var vänlig att rotera den till porträttläge för att se hemsidan igen.</p>
				<small>Om din enhet inte roterar när du vänder den i porträttläge så kan den vara låst.</small>
			</div>
		</div>
		*}
		
		<div class="container-fluid website">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{* Include Headers *}
			{include uri='design:page_header.tpl'}

			<div class="content-fluid">
				{include uri="design:newscenter/widget/widget_slider_carousel.tpl"}
			</div>



			{* Include Zones *}
			{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone')))}
			{if $zones}
				{foreach $zones as $zone}
					{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
				{/foreach}
			{/if}

		</div>

		{*
		<nav class="navbar navbar-default navbar-fixed-bottom hidden" id="homescreen">
			<div class="container">
				<div class="thumbnail alert-warning">
					Spara appen på hemskärmen för en bättre upplevelse.
				</div>
			</div>
		</nav>
		*}

		{* Check if webshop is active *}
		{if $company.data_map.webshop_active.value}AKTIVT{/if}


	</body>

</html>