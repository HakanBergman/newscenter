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
		
	</head>
	
	<body class="bg-grey font-family-bookman-old">
	<div id="fb-root"></div>

		{def $user = fetch('user', 'current_user')}
			{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($#company.node_id))}
  <div class="container">
      <div class="row row-offcanvas row-offcanvas-left">
        
        <!-- sidebar -->
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">Link 1</a></li>
              <li><a href="#">Link 2</a></li>
              <li><a href="#">Link 3</a></li>              
            </ul>
        </div>
  	
        <!-- main area -->
        <div class="col-xs-12 col-sm-9">
          <h1>Shrink Width to Collapse Sidebar</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus in nisi eu arcu tempus vehicula. 
            Nulla faucibus cursus metus in sagittis. Nunc elit leo, imperdiet in ligula in, euismod varius est. 
            Aenean pellentesque lorem a porttitor placerat. Vestibulum placerat nunc ac rutrum fringilla. Donec 
            arcu leo, tempus adipiscing volutpat id, congue in purus. Pellentesque scelerisque mattis nibh vel 
            semper. Sed a risus purus. Fusce pulvinar, velit eget rhoncus facilisis, enim elit vulputate nisl, a 
            euismod diam metus eu enim. Nullam congue justo vitae justo accumsan, sit amet malesuada nulla sagittis. 
            Nam neque tellus, tristique in est vel, sagittis congue turpis. Aliquam nulla lacus, laoreet dapibus 
            odio vitae, posuere volutpat magna. Nam pulvinar lacus in sapien feugiat, sit amet vestibulum enim 
            eleifend. Integer sit amet ante auctor, lacinia sem quis, consectetur nulla.</p>
    
          <p>Vestibulum porttitor massa eget pellentesque eleifend. Suspendisse tempor, nisi eu placerat auctor, 
            est erat tempus neque, pellentesque venenatis eros lorem vel quam. Nulla luctus malesuada porttitor. 
            Fusce risus mi, luctus scelerisque hendrerit feugiat, volutpat gravida nisi. Quisque facilisis risus 
            in lacus sagittis malesuada. Suspendisse non purus diam. Nunc commodo felis sit amet tortor 
            adipiscing varius. Fusce commodo nulla quis fermentum hendrerit. Donec vulputate, tellus sed 
            venenatis sodales, purus nibh ullamcorper quam, sit amet tristique justo velit molestie lorem.</p>
    
          <p>Fusce sollicitudin lacus lacinia mi tincidunt ullamcorper. Aenean velit ipsum, vestibulum nec 
            tincidunt eu, lobortis vitae erat. Nullam ultricies fringilla ultricies. Sed euismod nibh quis 
            tincidunt dapibus. Nulla quam velit, porta sit amet felis eu, auctor fringilla elit. Donec 
            convallis tincidunt nibh, quis pellentesque sapien condimentum a. Phasellus purus dui, rhoncus 
            id suscipit id, ornare et sem. Duis aliquet posuere arcu a ornare. Pellentesque consequat libero 
            id massa accumsan volutpat. Fusce a hendrerit lacus. Nam elementum ac eros eu porttitor. 
            Phasellus enim mi, auctor sit amet luctus a, commodo fermentum arcu. In volutpat scelerisque 
            quam, nec lacinia libero.</p>
    
          <p>Aliquam a lacinia orci, iaculis porttitor neque. Nullam cursus dolor tempus mauris posuere, eu 
            scelerisque sem tincidunt. Praesent blandit sapien at sem pulvinar, vel egestas orci varius. 
            Praesent vitae purus at ante aliquet luctus vel quis nibh. Mauris id nulla vitae est lacinia 
            rhoncus a vel justo. Donec iaculis quis sapien vel molestie. Aliquam sed elementum orci. 
            Vestibulum tristique tempor risus et malesuada. Sed eget ligula sed quam placerat dapibus. 
            Integer accumsan ac massa at tempus.</p>
          
        </div><!-- /.col-xs-12 main -->
    </div><!--/.row-->
  </div><!--/.container-->
			{/if}
		{undef $user}

		<div class="container-fluid website container-padding-bottom">

			{* Include Headers *}
			{*include uri='design:newscenter/widget/cookies/widget_cookie.tpl'*}

			{* Include Headers *}
			{include uri='design:page_header.tpl'}

			{* Include Standard Zones *}
			{def $zones = fetch('content', 'list', hash('parent_node_id', $current_node_id, 'class_filter_type', 'include', 'class_filter_array', array('zone'), 'sort_by', array('priority', true()) ))}
			{if $zones}
				{foreach $zones as $zone}
					{include uri="design:newscenter/zone/zone.tpl" zone=$zone}
				{/foreach}
			{/if}

			{$module_result.content}

		</div>

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

	</body>
</html>