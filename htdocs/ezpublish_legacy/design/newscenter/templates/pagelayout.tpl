<!DOCTYPE html>
<html lang="sv">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

		<meta name="mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-title" content="Startsidans titel">

		<!-- Apple devices icons -->
		<link rel="apple-touch-icon" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-dhc-logo.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-dhc-logo.png">
		

		<title>Bootstrap 101 Template</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">	

		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/responsive.css">
		<link rel="stylesheet" href="css/font-size.css">
		<link rel="stylesheet" href="css/top-navigation.css">	
		<link rel="stylesheet" href="css/navigation.css">
		<link rel="stylesheet" href="css/bg-colors.css">
		<link rel="stylesheet" href="css/borders.css">
		<link rel="stylesheet" href="css/orientation.css">
		<link rel="stylesheet" href="css/homescreen.css">

		<link rel="stylesheet" href="css/block/input/widget-select.css">
		<link rel="stylesheet" href="css/block/product/product.css">
		<link rel="stylesheet" href="css/block/news/news-block.css">
		<link rel="stylesheet" href="css/block/ads/ads-block.css">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

		<!-- Enable Mmenu -->
		<link rel="stylesheet" href="js/mmenu/src/css/jquery.mmenu.all.css">
		<script type="text/javascript" src="js/mmenu/src/js/jquery.mmenu.min.all.js"></script>
		<script type="text/javascript" src="js/mmenu.js"></script>
		<script type="text/javascript" src="js/orientation.js"></script>
						
	</head>
	
	<body class="bg-grey">
		<!-- Anv�nds ej 
		<div class="container">
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
		-->
		
		<div class="container-fluid website">

			{* Include Headers *}
			require_once("page_header.tpl");

			{* Include Headers *}
			#require_once("widgets/cookies/cookies.tpl");

			{* Include Zone *}
			require_once("zone/zone-left.tpl");
			
		</div>

		<nav class="navbar navbar-default navbar-fixed-bottom hidden" id="homescreen">
			<div class="container">
				<div class="thumbnail alert-warning">
					Spara appen p� hemsk�rmen f�r en b�ttre upplevelse.
				</div>
			</div>
		</nav>

	</body>

</html>