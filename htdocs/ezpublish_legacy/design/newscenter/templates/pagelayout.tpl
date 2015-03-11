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
			 $user			   = fetch('user', 'current_user')
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

		{* Enable JavaScript *}
		<link rel="stylesheet" href={"javascript/mmenu/src/css/jquery.mmenu.all.css"|ezdesign}>
		<link rel="stylesheet" href={"javascript/pgwslider/pgwslider.min.css"|ezdesign}>
		<script type="text/javascript" src={"javascript/mmenu/src/js/jquery.mmenu.min.all.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/flexslider/jquery.flexslider-min.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/mmenu.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/orientation.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/pgwslider/pgwslider.min.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/facebook.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/dropdown.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/responsive.js"|ezdesign}></script>
		
	</head>
	
	<body class="bg-grey font-family-bookman-old">
	<div id="fb-root"></div>

	<nav class="navbar navbar-fixed-top min-height-none bg-white thumbnail">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 no-padding no-margin container-padding-left-2">
				<img src="{'dhc_298x151.png'|ezimage('no')}" class="img-responsive max-width-3-em-important float-left" />
				<div class="col-lg-12 thumbnail no-margin no-padding container-margin-top-108 left-none bg-white absolute">
					<div class="edit container-padding-left-2">
						<span class="glyphicon glyphicon-home text-primary"></span> <a href="http://www.datadelenhc.se" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Datadelen Hosting Center</a>
                    </div>
					<div class="edit container-padding-left-2">
						<span class="glyphicon glyphicon-cloud text-primary"></span> <a href="http://webbcenter.datadelenhc.se/" class="text-decoration-none container-padding-left" title="Datadelen Webb Center" target="_blank">Datadelen Webb Center</a>
                    </div>
					<div class="edit container-padding-left-2">
						<span class="glyphicon glyphicon-question-sign text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Dokumentation</a>
                    </div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 no-padding no-margin container-padding-left-2">
				<div>{$#company.name|wash()}</div>
				<div class="col-lg-12 thumbnail no-margin no-padding container-margin-top-108 left-none bg-white absolute">
					<div class="edit container-padding-left-2">
						<span class="glyphicon glyphicon-pencil text-primary"></span> <a href="http://webbcenter.datadelenhc.se/wiki" class="text-decoration-none container-padding-left" title="Datadelen Hosting Center" target="_blank">Dokumentation</a>
					</div>
				</div>
			</div>
		</div>																			
	</nav>

		<div class="container-fluid website container-padding-bottom{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))} container-padding-top-2{/if}">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{if and(is_set($object)|not, is_set($edit_version)|not)}
				{* Include Headers *}
				{include uri='design:page_header.tpl'}
			{/if}

			{if and(is_set($object)|not, is_set($edit_version)|not)}
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					{include uri="design:page_admin_sidebar.tpl" user=$user}
				{/if}
			{/if}

			{if and(is_set($object)|not, is_set($edit_version)|not)}
				{* Include Standard Zones *}
				{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'sort_by', array('priority', true()) ))}
				{if $zones}
					{foreach $zones as $zone}
						{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
					{/foreach}
				{/if}
			{/if}
			{$module_result.content}
		</div>

		{if and(is_set($object)|not, is_set($edit_version)|not)}

			<div class="container-fluid {$#company.data_map.background_color_footer.data_text} nav-padding-bottom-4">
				<div class="container">
					<footer class="{$#company.data_map.link_color_menu_mouseover.data_text} {$#company.data_map.link_color_menu.data_text} container-padding-top">
						{* Include Footer Zone *}
						{def $zones = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone_footer')))}
						{if $zones}
							{foreach $zones as $zone}
								{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
							{/foreach}
						{/if}
						<div class="bg-granate">&nbsp;</div>
						<div class="col-lg-12 nav-padding-bottom-4">
							<span class="pull-left {$#company.data_map.text_color_footer.data_text}">{'&copy; Copyright'|upfirst()} {currentdate()|datetime('custom', '%Y')} {$#company.name|wash()}</span>
							<span class="pull-right"><span class="{$#company.data_map.text_color_footer.data_text}">{$#company.data_map.company_address.data_text}, {$#company.data_map.zipcode.data_text} {$#company.data_map.city.data_text}</span> | <span class="{$#company.data_map.text_color_footer.data_text}">Tel:</span> <a href="tel:086462600">{$#company.data_map.phone.data_text}</a> | <span class="{$#company.data_map.text_color_footer.data_text}">E-postadress:</span> <a href="mailto:{$#company.data_map.email.data_text}">{$#company.data_map.email.data_text}</a></span>
						</div>
					</footer>
				</div>
			</div>

			{* Check if webshop is active *}
			{if $#company.data_map.webshop_active.value}
				{* Include Basket *}
				{include uri="design:newscenter/widget/webshop/basket.tpl"}
			{/if}

		{/if}

	</body>
</html>