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
		{def $block_width = ""}
		{def $company = ""}
		{set scope='global' $zone_width = ""}
		{set scope='global' $block_width = ""}
		{set scope='global' $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
		{def $sitesettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('site_settings'), 'limit', 1))}
        {def $menusettings = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('menu_settings'), 'limit', 1))}

		{* Include Page Head *}	
		{include uri='design:page_head.tpl'}

		{* Apple Device Icons *}
		<link rel="apple-touch-icon" href="/{$sitesettings.0.data_map.icon_apple_default.content.original.full_path}">
		<link rel="apple-touch-icon" sizes="76x76" href="/{$sitesettings.0.data_map.icon_apple_default.content.original.full_path}">
		<link rel="apple-touch-icon" sizes="120x120" href="/{$sitesettings.0.data_map.icon_apple_tablet.content.original.full_path}">
		<link rel="apple-touch-icon" sizes="152x152" href="/{$sitesettings.0.data_map.icon_apple_retina.content.original.full_path}">
		
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
		<script type="text/javascript" src={"javascript/jquery-cookie/src/jquery.cookie.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/flexslider/jquery.flexslider-min.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/mmenu.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/orientation.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/pgwslider/pgwslider.min.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/facebook.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/dropdown.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/responsive.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/admin_bar.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/overlay.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/toggle_class.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/color_picker.js"|ezdesign}></script>
		<script type="text/javascript" src={"javascript/font_picker.js"|ezdesign}></script>		
		<script type="text/javascript" src={"javascript/zone_picker.js"|ezdesign}></script>		
		<script type="text/javascript" src={"javascript/preview.js"|ezdesign}></script>		
	</head>
	
	<body class="{$sitesettings.0.data_map.background_color.data_text} {$sitesettings.0.data_map.font_family.data_text} {$sitesettings.0.data_map.font_size.data_text}"{if $sitesettings.0.data_map.background_image.has_content} style="background: #fafafa url('{$sitesettings.0.data_map.background_image.content.original.full_path}') no-repeat top center fixed; background-size: cover;"{/if}>
	    <div id="fb-root"></div>

		{* Include Admin Bar *}
		{include uri="design:page_admin_bar.tpl" object=$object edit_version=$edit_version user=$user company=$#company}

		<div class="container-fluid website{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))} container-padding-top-205{/if}">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{if and(is_set($object)|not, is_set($edit_version)|not)}
				{* Include Headers *}
				{include uri='design:page_header.tpl'}
			{/if}
            
			{* Include Admin Site Bar *}
			{if and(is_set($object)|not, is_set($edit_version)|not)}
				{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
					{include uri="design:page_admin_site_bar.tpl" user=$user}
				{/if}
			{/if}

			{if and(is_set($object)|not, is_set($edit_version)|not)}
				
				{* Include Frontpage Zones *}
				{if $current_node_id|eq($#company.node_id)}
					{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'attribute_filter', array( array('zone/zone_position', '=', 0)), 'sort_by', array('attribute', true(), 'zone/priority') ))}
						{if $zones}		
							{def $zones_count = 0}
							{def $normal_zone = 0}
								<section id="section-frontpage">
									<div class="container-fluid">                                    
										{foreach $zones as $zone}																	

											{* Verify what to do with our first node *}
											{if $zones_count|eq(0)}
												{if $zones.$zones_count.data_map.fullscreen.value}

													{* Full screen Zone *}
													<div class="{$sitesettings.0.data_map.background_color.data_text}">
														<div class="container">
															{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
														</div>
													</div>

												{else}

													{* Normal Zone *}
													<div class="container">
														{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
													{set $normal_zone = 1}

												{/if}
											{else}

												{* Validate the rest of the nodes *}
												{if $zones.$zones_count.data_map.fullscreen.value}

													{* Full screen Zone *}
													{* Verify if we had a normal zone, if we do, we need to close it *}
													{if $normal_zone}</div>{set $normal_zone = 0}{/if}

													<div class="{$sitesettings.0.data_map.background_color.data_text}">
														<div class="container">
															{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
														</div>
													</div>

												{else}
													
													{* Normal Zone *}
													{* Verify if we had a normal zone, if we dont, we dont need to start one *}
													{if $normal_zone|not}<div class="container">{set $normal_zone = 1}{/if}

													{* Include our template *}
													{include uri="design:newscenter/zone/zone.tpl" zone=$zone}

													{* Verify when this is our last node *}
													Z {$zones_count} <-> {$zones|count()}

												{/if}												

											{set $zones_count = $zones_count|sum(1)}									
										{/foreach}
									</div>
								</section>     
							{undef $zones_count $normal_zone}                            							
						{/if}
					{undef $zones}
				{/if}

				{* Include Before Content Zones *}
				{if $current_node_id|ne($#company.node_id)}
					{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'attribute_filter', array( array('zone/zone_position', '=', 1)), 'sort_by', array('priority', true()) ))}
						{if $zones}
                            {if $zones.0.data_map.fullscreen.value}
                                <section id="section-pre-contet">
                                    <div class="container-fluid {$sitesettings.0.data_map.background_color.data_text}">
                                        {foreach $zones as $zone}
                                            {include uri="design:newscenter/zone/zone.tpl" zone=$zone}
                                        {/foreach}
                                    </div>
                                </section>
                            {else}
                                <section id="section-pre-content" class="container-padding-left container-padding-right">
								    <div class="container {$sitesettings.0.data_map.background_color.data_text}">
                                        {foreach $zones as $zone}
                                            {include uri="design:newscenter/zone/zone.tpl" zone=$zone}
                                        {/foreach}
								    </div>
                                </section>
                            {/if}
						{/if}
					{undef $zones}
				{/if}

			{/if}

			{* Main Content *}
            <div class="{$menusettings.0.data_map.link_hover_color.data_text}">
                {$module_result.content}
            </div>

			{if and(is_set($object)|not, is_set($edit_version)|not)}				

				{* Include After Content Zones *}
				{if $current_node_id|ne($#company.node_id)}
					{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'attribute_filter', array( array('zone/zone_position', '=', 2)), 'sort_by', array('priority', true()) ))}
						{if $zones}
                            {if $zones.0.data_map.fullscreen.value}
                                <section id="section-after-content">
                                    <div class="container-fluid {$sitesettings.0.data_map.background_color.data_text}">
                                        {foreach $zones as $zone}
                                            {include uri="design:newscenter/zone/zone.tpl" zone=$zone}
                                        {/foreach}
                                    </div>
                                </section>
                            {else}
                                <section id="section-after-content" class="container-padding-left container-padding-right">
								    <div class="container {$sitesettings.0.data_map.background_color.data_text}">
                                        {foreach $zones as $zone}
                                            {include uri="design:newscenter/zone/zone.tpl" zone=$zone}
                                        {/foreach}
								    </div>
                                </section>
                            {/if}
						{/if}
					{undef $zones}
				{/if}

			{/if}

		</div>

		{if and(is_set($object)|not, is_set($edit_version)|not)}

			<div class="container-fluid {$menusettings.0.data_map.background_color.data_text} nav-padding-bottom-4">
				<div class="container">
                    <footer class="{$menusettings.0.data_map.link_color.data_text} {$menusettings.0.data_map.link_active_color.data_text} {$menusettings.0.data_map.link_hover_color.data_text} {$sitesettings.0.data_map.text_color_footer.data_text} container-padding-top">
                        {* Include Footer Zone *}
                        {def $zones = fetch('content', 'list', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone_footer')))}
                        {if $zones}
                        {foreach $zones as $zone}
                        {include uri="design:newscenter/zone/zone.tpl" zone=$zone user=$user}
                        {/foreach}
                        {/if}
                        <div class="{$#company.data_map.footer_color.data_text}">&nbsp;</div>
                        <div class="col-lg-12 nav-padding-bottom-4">
                            <div class="pull-left {$#company.data_map.text_color_footer.data_text}">{'&copy; Copyright'|upfirst()} {currentdate()|datetime('custom', '%Y')} {$sitesettings.0.data_map.site_title.data_text|wash()}</div>
                            <div class="pull-right">
                                <span class="{$#company.data_map.text_color_footer.data_text}">{$sitesettings.0.data_map.address.data_text}, {$sitesettings.0.data_map.zipcode.data_text} {$sitesettings.0.data_map.city.data_text}</span>
                                <span class="{$#company.data_map.text_color_footer.data_text}">Tel:</span> <a href="tel:{$sitesettings.0.data_map.phone.data_text}">{$sitesettings.0.data_map.phone.data_text}</a>
                                <span class="{$#company.data_map.text_color_footer.data_text}">E-postadress:</span> <a href="mailto:{$sitesettings.0.data_map.email.data_text}">{$sitesettings.0.data_map.email.data_text}</a>
                                <a href="/user/login"><span class="glyphicon glyphicon-lock"></span></a>
                            </div>
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