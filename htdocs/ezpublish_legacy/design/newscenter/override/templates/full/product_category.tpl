{literal}
<style>
.shop-category {
margin-right: 13.625%;
color: #000;
font: normal 11px/15px sans-serif;
margin-bottom: 5px;
}
.shop-category:last-child {
margin-bottom: 20px;
}
.sort-options {
line-height: 31px;
}
.sort-options:before, .sort-options:after {
content: "";
display: table;
}
.sort-options:after {
clear: both;
}
.sort-options-label {
float: left;
padding: 0 9px 0 0;
}
.sortbutton.active {
color: #d1d1d1;
border-right: #d1d1d1;
background: #666;
}
.sortbutton {
float: left;
background: #232323 url(../img/search-bg.png) repeat-x;
padding: 0 15px;
border-right: 1px solid #686868;
font-size: 14px;
color: #b6b6b6;
}
.filter {
float: left;
height: 31px;
position: relative;
}
.filter .sortbutton {
width: 178px;
padding: 0;
}
.sortbutton {
float: left;
background: #232323 url(../img/search-bg.png) repeat-x;
padding: 0 15px;
border-right: 1px solid #686868;
font-size: 14px;
color: #b6b6b6;
}
.filter .sortbutton span {
display: block;
padding: 0 31px 0 15px;
background: url(../img/select-arrow.png) no-repeat 100% 50%;
}
.filter .category-list {
position: absolute;
width: 100%;
top: 31px;
left: 0;
z-index: 100;
display: none;
}
.filter .category-list ul {
padding: 0;
margin: 0;
list-style: none;
background: #000;
}
.filter .category-list ul li {
font: normal 14px/16px sans-serif;
padding: 7px 15px;
}
.filter .category-list ul li a {
color: #B6B6B6;
}
.sort-options .limit {
clear: both;
padding: 6px 0 0;
}
.shop-category .flexslider {
padding-top: 20px;
}
.flexslider {
background: #fff;
position: relative;
zoom: 1;
padding: 0 0 19px;
margin: 0;
}
.shop-category .carousel .slides {
border-bottom: 1px solid #c3c3c3;
padding: 0 0 17px;
}
.flexslider .slides {
zoom: 1;
}
.flexslider .slides > li {
position: relative;
zoom: 1;
}
.shop-category .carousel li .item {
margin: 0 20px 20px 0;
float: left;
width: 105px;
}
.shop-category .img-link {
height: 141px;
display: block;
vertical-align: bottom;
position: relative;
margin: 0 0 6px;
}
.shop-category .img-link img {
display: block;
vertical-align: bottom;
position: absolute;
bottom: 0;
max-height: 100%;
}
.flexslider .slides img {
max-width: 100%;
display: block;
}
.flexslider img {
display: block;
margin: 0 auto;
}
.shop-category .title {
font-weight: normal;
display: block;
margin: 0 0 2px;
height: 30px;
min-height: 30px;
}
.shop-category .price {
display: block;
font: bold 20px/24px sans-serif;
margin: 0 0 5px;
}
.shop-category li form {
margin: 0 0 5px;
}
.shop-category li .add-to-basket {
border: none;
background: url(../img/colored-arrows.png) no-repeat 0 -80px;
color: #454545;
display: block;
font: 12px/19px sans-serif;
padding: 0 0 0 24px;
}
button, input[type="button"], input[type="reset"], input[type="submit"] {
cursor: pointer;
-webkit-appearance: button;
}
button, input, select, textarea {
font-size: 100%;
margin: 0;
vertical-align: baseline;
border-radius: 0;
}
.shop-category .std-btn {
background-position: 0 0;
position: relative;
}
.std-btn {
height: 19px;
border: none;
}
.flex-container a, .flexslider a, .flex-container a:active, .flexslider a:active, .flex-container a:focus, .flexslider a:focus {
outline: none;
}
.book, .std-btn {
display: block;
font: normal 12px/19px sans-serif;
color: #333;
padding: 0 0 0 24px;
background: url(../img/colored-arrows.png) no-repeat;
}
.flexslider .slides > li {
position: relative;
zoom: 1;
}
.shop-category .flex-control-nav {
width: auto;
right: 0;
line-height: 1em;
margin-right: -8px;
}
.flex-control-nav {
width: 36px;
position: absolute;
bottom: 0;
right: 40px;
text-align: center;
font: normal 11px/19px sans-serif;
color: #666;
}
.slides, .flex-control-nav, .flex-direction-nav {
margin: 0;
padding: 0;
list-style: none;
}
.shop-category .flex-control-nav li:first-child {
border-left: none;
}
.shop-category .flex-control-nav li {
display: block;
float: left;
margin: 0;
border-left: 1px solid #666;
}
.shop-category .flex-control-nav li a.flex-active {
color: #000;
text-decoration: underline;
}
.shop-category .flex-control-nav li a {
display: block;
float: left;
padding: 0 8px;
}
.flex-control-nav a.flex-active {
display: block;
cursor: default;
}


</style>
{/literal}

<div class="container">
<div class="shop-category shop-current" style="">
					<div class="sort-options">
	<span class="sort-options-label">Sortera via:</span>
	<a href="http://dev.fotografiska.se/Butik/Affischer/(sort)/title" class="sortbutton by-author active">Titel</a>
	<a href="http://dev.fotografiska.se/Butik/Affischer/(sort)/author" class="sortbutton by-rating ">Författare</a>
	<a href="http://dev.fotografiska.se/Butik/Affischer/(sort)/price" class="sortbutton by-price ">Priset</a>
	<div class="filter">
		<a href="#" class="sortbutton categories"><span>Kategorier</span></a>
		<div class="category-list">
			<ul>
				<li><a href="/webshop/Produkter/Affischer/(category)/David LaChapelle">David LaChapelle</a></li>
				<li><a href="/webshop/Produkter/Affischer">Alla</a></li>
			</ul>
		</div>
	</div>
	<div class="limit">
		Visas:
		<a class="active" href="http://dev.fotografiska.se/Butik/Affischer/(items)/10">&gt;10</a>
		<a href="http://dev.fotografiska.se/Butik/Affischer/(items)/20">20</a>
		<a href="http://dev.fotografiska.se/Butik/Affischer/(items)/30">30</a>
	</div>
	
</div>			
					<div class="flexslider carousel">
								
					<div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 2800%; -moz-transition-duration: 0s; -moz-transform: translate3d(0px, 0px, 0px);">	
					<li>
						<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-48"><img alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
							<strong class="title">Affisch Albert Watson 48</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24842" name="ContentNodeID">
									<input type="hidden" value="40004" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-48" class="std-btn">Läs mer <span>om Affisch Albert Watson 48</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-49"><img alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
							<strong class="title">Affisch Albert Watson 49</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24843" name="ContentNodeID">
									<input type="hidden" value="40005" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-49" class="std-btn">Läs mer <span>om Affisch Albert Watson 49</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-50"><img alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
							<strong class="title">Affisch Albert Watson 50</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24844" name="ContentNodeID">
									<input type="hidden" value="40006" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-50" class="std-btn">Läs mer <span>om Affisch Albert Watson 50</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-51"><img alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
							<strong class="title">Affisch Albert Watson 51</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24845" name="ContentNodeID">
									<input type="hidden" value="40007" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-51" class="std-btn">Läs mer <span>om Affisch Albert Watson 51</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-52"><img alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
							<strong class="title">Affisch Albert Watson 52</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24846" name="ContentNodeID">
									<input type="hidden" value="40008" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-52" class="std-btn">Läs mer <span>om Affisch Albert Watson 52</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-53">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-albert-watson-53/621379-1-swe-SE/Affisch-Albert-Watson-53_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Albert Watson 53</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24847" name="ContentNodeID">
									<input type="hidden" value="40009" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-53" class="std-btn">Läs mer <span>om Affisch Albert Watson 53</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-54">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-albert-watson-54/621393-1-swe-SE/Affisch-Albert-Watson-54_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Albert Watson 54</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24848" name="ContentNodeID">
									<input type="hidden" value="40010" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-54" class="std-btn">Läs mer <span>om Affisch Albert Watson 54</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-55">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-albert-watson-55/621407-1-swe-SE/Affisch-Albert-Watson-55_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Albert Watson 55</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24849" name="ContentNodeID">
									<input type="hidden" value="40011" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-55" class="std-btn">Läs mer <span>om Affisch Albert Watson 55</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-56">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-burtynsky-56/621421-1-swe-SE/Affisch-Burtynsky-56_shop_list_image.png">							</a>
							<strong class="title">Affisch Burtynsky 56</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24850" name="ContentNodeID">
									<input type="hidden" value="40012" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-56" class="std-btn">Läs mer <span>om Affisch Burtynsky 56</span></a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-57">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-burtynsky-57/621435-1-swe-SE/Affisch-Burtynsky-57_shop_list_image.png">							</a>
							<strong class="title">Affisch Burtynsky 57</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24851" name="ContentNodeID">
									<input type="hidden" value="40013" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-57" class="std-btn">Läs mer om Affisch Burtynsky 57</a>
						</div>
												</li>
					<li>
															<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-58">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-burtynsky-58/621449-1-swe-SE/Affisch-Burtynsky-58_shop_list_image.png">							</a>
							<strong class="title">Affisch Burtynsky 58</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24852" name="ContentNodeID">
									<input type="hidden" value="40014" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-58" class="std-btn">Läs mer om Affisch Burtynsky 58</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-59">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-burtynsky-59/621463-1-swe-SE/Affisch-Burtynsky-59_shop_list_image.png">							</a>
							<strong class="title">Affisch Burtynsky 59</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24853" name="ContentNodeID">
									<input type="hidden" value="40015" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Burtynsky-59" class="std-btn">Läs mer om Affisch Burtynsky 59</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Fellaender-60">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-fellaender-60/621477-1-swe-SE/Affisch-Fellaender-60_shop_list_image.png">							</a>
							<strong class="title">Affisch Felländer 60</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24854" name="ContentNodeID">
									<input type="hidden" value="40016" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Fellaender-60" class="std-btn">Läs mer om Affisch Felländer 60</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Fellaender-61">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-fellaender-61/621491-1-swe-SE/Affisch-Fellaender-61_shop_list_image.png">							</a>
							<strong class="title">Affisch Felländer 61</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24855" name="ContentNodeID">
									<input type="hidden" value="40017" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Fellaender-61" class="std-btn">Läs mer om Affisch Felländer 61</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-62">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-mapplethorpe-62/621505-1-swe-SE/Affisch-Mapplethorpe-62_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Mapplethorpe 62</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24856" name="ContentNodeID">
									<input type="hidden" value="40018" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-62" class="std-btn">Läs mer om Affisch Mapplethorpe 62</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-63">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-mapplethorpe-63/621519-1-swe-SE/Affisch-Mapplethorpe-63_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Mapplethorpe 63</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24857" name="ContentNodeID">
									<input type="hidden" value="40019" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-63" class="std-btn">Läs mer om Affisch Mapplethorpe 63</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-64">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-mapplethorpe-64/621533-1-swe-SE/Affisch-Mapplethorpe-64_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Mapplethorpe 64</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24858" name="ContentNodeID">
									<input type="hidden" value="40020" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-64" class="std-btn">Läs mer om Affisch Mapplethorpe 64</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-65">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-mapplethorpe-65/621547-1-swe-SE/Affisch-Mapplethorpe-65_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Mapplethorpe 65</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24859" name="ContentNodeID">
									<input type="hidden" value="40021" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-65" class="std-btn">Läs mer om Affisch Mapplethorpe 65</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-66">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-mapplethorpe-66/621561-1-swe-SE/Affisch-Mapplethorpe-66_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Mapplethorpe 66</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24860" name="ContentNodeID">
									<input type="hidden" value="40022" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Mapplethorpe-66" class="std-btn">Läs mer om Affisch Mapplethorpe 66</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Chanel-67">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-chanel-67/621575-1-swe-SE/Affisch-Chanel-67_shop_list_image.png">							</a>
							<strong class="title">Affisch Chanel 67</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24861" name="ContentNodeID">
									<input type="hidden" value="40023" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Chanel-67" class="std-btn">Läs mer om Affisch Chanel 67</a>
						</div>
												</li>
					
					<li>
															<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-45">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-andy-warhol-45/623129-1-swe-SE/Affisch-Andy-Warhol-45_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Andy Warhol 45</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24972" name="ContentNodeID">
									<input type="hidden" value="40134" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-45" class="std-btn">Läs mer om Affisch Andy Warhol 45</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-46">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-andy-warhol-46/623143-1-swe-SE/Affisch-Andy-Warhol-46_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Andy Warhol 46</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24973" name="ContentNodeID">
									<input type="hidden" value="40135" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-46" class="std-btn">Läs mer om Affisch Andy Warhol 46</a>
						</div>
																				<div class="item">
							<a class="img-link" href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-47">
								<img alt="" src="http://dev.fotografiska.se/var/fgrafiska/storage/images/butik/affischer/affischer/affisch-andy-warhol-47/623157-1-swe-SE/Affisch-Andy-Warhol-47_shop_list_image.jpg">							</a>
							<strong class="title">Affisch Andy Warhol 47</strong>
							<span class="price">120,00 kr</span>						
							<form action="/webshop/content/action" method="post">
									<input type="hidden" value="24974" name="ContentNodeID">
									<input type="hidden" value="40136" name="ContentObjectID">
									<input type="hidden" value="full" name="ViewMode">
									<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
							</form>						
							<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Andy-Warhol-47" class="std-btn">Läs mer om Affisch Andy Warhol 47</a>
						</div>
																																																																											</li>
			
	</ul></div></div>
				</div>















			
			
			
			
			
			
			
			
			
			
			
			
			
		</div>
</div>

{literal}
<script type="text/javascript">
  $(window).load(function() {
	$('.shop-category .flexslider').flexslider({
		animation: "slide",
		directionNav: false,
		animationLoop: false,
		slideshow: false,
		reverse: false,
		itemWidth: 605,
		itemMargin: 0,
		minItems: 1,
		maxItems: 1
	});	
  });
</script>
{/literal}



<div class="container bg-black">
	<h2>{$node.name|wash()} <a href="/content/edit/{$node.contentobject_id}" title="Redigera {$node.name|wash()}">Redigera {$node.name|wash()}</a></h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
  {if $node.children}
    <div class="col-lg-12 col-md-12 col-sm-12">
      {foreach $node.children as $list}      								
					<ul>
							<li class="link-color-beige-hover">
                <a class="font-weight-normal" href="{$list.url|ezurl('no', 'full')}" title="{$list.name|wash()}">{$list.name|wash()}</a>
                <a href="/content/edit/{$list.contentobject_id}" title="Redigera {$list.name|wash()}">Redigera {$list.name|wash()}</a>
                <form method="post" action="/content/action">
                    <input type="hidden" name="TopLevelNode" value="{$list.node_id}"></input>
                    <input type="hidden" name="ContentNodeID" value="{$list.node_id}"></input>
                    <input type="hidden" name="ContentObjectID" value="{$list.contentobject_id}"></input>
                    <input class="button" type="submit" name="ActionRemove" value="Radera {$list.name|wash()}" title="Radera det här objektet."></input>
                </form>
              </li>            
					</ul>
      {/foreach}
    </div>
  {/if}

  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="61">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa nytt Land"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>

  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="47">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa ny Produktlista"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>
 
</div>