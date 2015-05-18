	<div class="row widget-products">
			<article>
				{if and(is_set($object)|not, is_set($edit_version)|not)}
					{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
					  <div class="container-margin-left admin-panel container-padding-right container-padding-left float-right hide">
						  <form action="/content/action" method="post">
							  <input type="hidden" value="product" name="ClassIdentifier" />
							  <input type="hidden" class="input-zone-id" value="{$block.node_id}" name="NodeID" /> 
							  <input type="hidden" value="swe-SE" name="ContentLanguageCode" /> 							
							  <button type="submit" name="NewButton" class="btn btn-link"><span class="glyphicon glyphicon-plus"></span></button>										
						  </form>
					  </div>
					{/if}
				{/if}
				<aside class="clear">
					{def $products = fetch('content', 'list', hash('parent_node_id', $block.node_id))}
						{switch match=$products|count()}
							{case match=1}
								{def $class = 'col-lg-12 col-md-12 col-sm-12 col-xs-12'}
							{/case}
							{case match=2}
								{def $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'}
							{/case}
							{case match=3}
								{def $class = 'col-lg-4 col-md-4 col-sm-12 col-xs-12'}
							{/case}
							{case match=4}
								{def $class = 'col-lg-3 col-md-3 col-sm-12 col-xs-12'}
							{/case}
							{case}
								{def $class = 'col-lg-12 col-md-12 col-sm-12 col-xs-12'}
							{/case}
						{/switch}
						{foreach $products as $product}						
							<div class="{$class} no-margin no-padding">
								<h4>{$product.name|wash()}</h4>
                <form method="post" action="/shop/basket" class="form_number_{$product.object.id}">
                  <input type="hidden" name="TopLevelNode" value="{$product.node_id}" />
                  <input type="hidden" name="ContentNodeID" value="{$product.node_id}" />
                  <input type="hidden" name="ContentObjectID" value="{$product.contentobject_id}" />
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 no-margin no-padding"><strong>{$product.data_map.price.content.price} {$product.data_map.price.content.currency|l10n( 'currency' )}</strong></div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 no-margin no-padding"><input type="text" class="form-control quantity_number_{$product.object.id}" placeholder="1" value="1" name="quantity" /></div>
                  <div class="col-lg-6 col-md-6 col-md-6 col-xs-6"><button type="submit" class="btn btn-primary glyphicon glyphicon-plus addtobasket2" name="ActionAddToBasket" product-id="{$product.object.id}" product-price="{$product.object.price_inc_vat}"></button></div>
                </form>
              </div>
						{/foreach}
					{undef $products}
				</aside>
			</article>
		</div>



