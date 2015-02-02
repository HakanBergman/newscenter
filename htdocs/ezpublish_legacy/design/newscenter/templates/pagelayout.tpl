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
		<link rel="stylesheet" type="text/css" href="http://s1c.pagawatic.com/css/pgwmenu-pgwjs-rainbow-v226.css"/>
		<link rel="stylesheet" type="text/css" href="http://s1c.pagawatic.com/css/pgwslider-v226.css"/>
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
		<link rel="stylesheet" href="{"javascript/mmenu/src/css/jquery.mmenu.all.css"|ezdesign}">
		<script type="text/javascript" src="{"javascript/mmenu/src/js/jquery.mmenu.min.all.js"|ezdesign}"></script>
		<script type="text/javascript" src="{"javascript/mmenu.js"|ezdesign}"></script>
		<script type="text/javascript" src="{"javascript/orientation.js"|ezdesign}"></script>
		<script type="text/javascript" src="http://s1c.pagawatic.com/js/jquery-pgwjs-pgwmenu-rainbow-v226.js"></script>
		<script type="text/javascript" src="http://s1c.pagawatic.com/js/pgwslider-v226.js"></script>
		<script src="http://s1c.pagawatic.com/js/ie_html5-v226.js"></script>

		{* Global Variables *}
		{def $zone_width = ""}
		{set scope='global' $zone_width = ""}

	</head>
	
	<body class="bg-grey font-family-bookman-old">
	
		{* Page Landscape disable *}
		{*<div class="container">
			<div class="landscape thumbnail alert-warning hidden">
				<p>Du f�rs�ker se hemsidan i ett format som inte st�ds.</p>
				<small>Det kan bero p� f�ljande orsaker:</small>
				<ul>
					<li>Du anv�nder din enhet i landskapsl�ge</li>
					<li>Din webbl�sare/enhet beh�ver uppdateras</li>
				</ul>
				<p>Om din enhet �r i landskapsl�ge, var v�nlig att rotera den till portr�ttl�ge f�r att se hemsidan igen.</p>
				<small>Om din enhet inte roterar n�r du v�nder den i portr�ttl�ge s� kan den vara l�st.</small>
			</div>
		</div>
		*}
		
		<div class="container-fluid website">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{* Include Headers *}
			{include uri='design:page_header.tpl'}

			{literal}
			<script type="text/javascript">
				$(document).ready(function() {
					$('.pgwSlideshow').pgwSlideshow();
				});
			</script>
			{/literal}

			<div class="content-fluid">
				<ul class="pgwSlideshow">
					<li><img src="san-francisco.jpg" alt="San Francisco, USA" data-description="Golden Gate Bridge"></li>
					<li><img src="rio.jpg" alt="Rio de Janeiro, Brazil"></li>
					<li><img src="london_mini.jpg" alt="" data-large-src="london.jpg"></li>
					<li><img src="new-york.jpg" alt=""></li>
					<li><img src="new-delhi.jpg" alt=""></li>
					<li><img src="paris.jpg" alt=""></li>
					<li><img src="sydney.jpg" alt=""></li>
					<li><img src="tokyo.jpg" alt=""></li>
					<li><img src="honk-kong.jpg" alt=""></li>
					<li><img src="dakar.jpg" alt=""></li>
					<li><img src="toronto.jpg" alt=""></li>
					<li>
						<a href="http://en.wikipedia.org/wiki/Monaco" target="_blank">
							<img src="monaco.jpg" alt="Monaco">
						</a>
					</li>
				</ul>
			</div>



			{* Include Zones *}
			{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone')))}
			{if $zones}
				{foreach $zones as $zone}
					{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
				{/foreach}
			{/if}

		</div>

		{* No Used *}
		{*
		<nav class="navbar navbar-default navbar-fixed-bottom hidden" id="homescreen">
			<div class="container">
				<div class="thumbnail alert-warning">
					Spara appen p� hemsk�rmen f�r en b�ttre upplevelse.
				</div>
			</div>
		</nav>
		*}

	</body>

</html>