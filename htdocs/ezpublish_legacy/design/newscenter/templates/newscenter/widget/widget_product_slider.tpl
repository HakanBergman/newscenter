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
										<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 {$node.data_map.link_color.data_text} {$node.data_map.hover_color.data_text}">											
											<a href="{$node.children.$item.url|ezurl('no', 'full')}" title="{$node.name|wash()}"><img class="img-responsive thumbnail no-margin" alt="{$node.children.$item.name|wash()}" src="/{$node.children.$item.data_map.image.content.original.full_path}"></a>
											<strong class="title"><a href="{$node.children.$item.url|ezurl('no', 'full')}" title="{$node.name|wash()}">{$node.children.$item.name|wash()}</a></strong>
										</div>
									{undef $item}
								{/for}
							{else}
								{for 1 to 8 as $number}
									<div class="col-lg-3 col-md-3 col-sm-3">
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
{undef $iterations}

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