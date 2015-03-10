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

		{* Page Styles *}
		{def $pagestyle        = $pagedata.css_classes
				$locales          = fetch( 'content', 'translation_list' )
				$current_node_id  = $pagedata.node_id
				$current_node	   = fetch('content', 'node', hash('node_id', $current_node_id))}

		{* Global Variables *}
		{def $zone_width = ""}
		{def $company = ""}
		{set scope='global' $zone_width = ""}
		{set scope='global' $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}

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
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	</head>
	
	<body class="bg-grey font-family-bookman-old">

		<div class="container-fluid website">
			{$module_result.content}
		</div>

	</body>
</html>