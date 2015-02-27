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
	<h2>{$node.name|wash()}</h2>
	{if $node.children}
		{foreach $node.children as $child}
			{switch match=$child.class_identifier}
				{case match='product_country'}
					<div class="col-lg-12">
						<div class="flag flag-icon-background {$child.data_map.country_class.data_text} width-105-em height-105-em float-left"></div>
						<h3 class="widget-padding-left float-left no-margin">{$child.name|wash()}</h3>
						{foreach $child.children as $grandchild}
							{switch match=$grandchild.class_identifier}
								{case match='product_list'}
									{switch match=$grandchild.class_identifier}
										{case match='product_list'}
											<div class="col-lg-12">
												<h4 class="no-margin font-weight-normal">{$grandchild.name}</h4>
											</div>
										{/case}
									{/switch}									
								{/case}
							{/switch}
						{/foreach}
					</div>
				{/case}
			{/switch}
		{/foreach}
		{def $iterations = $node.children|count()|div(8)|ceil()}	
		<div class="shop-category shop-current">			
			<div class="flexslider carousel">								
				<div class="flex-viewport">				
					<ul class="slides">	
						{for 1 to $iterations as $iteration}
							<li>
								{if $iterations|eq(1)}
									{for 1 to $node.children|count() as $number}										
										{def $item = $number|dec(1)}
											<div class="col-lg-3">
												{$node.children.$item.data_map|attribute(show, 1)}
												<a href="{$node.children.$item.url|ezurl('no', 'full')}"><img class="img-responsive thumbnail" alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
												<strong class="title">{$node.children.$item.name|wash()}</strong>
												{*
												<span class="price">120,00 kr</span>						
												<form action="/webshop/content/action" method="post">
													<input type="hidden" value="24842" name="ContentNodeID">
													<input type="hidden" value="40004" name="ContentObjectID">
													<input type="hidden" value="full" name="ViewMode">
													<button title="Lägg till varukorgen" name="ActionAddToBasket" type="submit" class="add-to-basket">Köp</button>
												</form>						
												<a href="http://dev.fotografiska.se/Butik/Affischer/Affisch-Albert-Watson-48" class="std-btn">Läs mer <span>om Affisch Albert Watson 48</span></a>
												*}
											</div>
										{undef $item}
									{/for}
								{else}
									{for 1 to 8 as $number}
										<div class="col-lg-3">
											<a href="#"><img class="img-responsive thumbnail" alt="" src="http://super-skeleton.mdnw.net/files/2012/02/slide4.jpg"></a>
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
									{/for}
								{/if}
							</li>
						{/for}
					</ul>
				</div>
			</div>
		</div>
	{/if}
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
		itemWidth: 1170,
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