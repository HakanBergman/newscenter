		testasdsad
		{*
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
		*}