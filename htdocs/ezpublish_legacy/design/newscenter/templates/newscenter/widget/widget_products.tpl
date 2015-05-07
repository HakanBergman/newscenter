<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container-padding-right container-padding-left no-margin no-padding">
	<div class="row widget-products">
		<div class="{if $block.data_map.fullscreen.value}container-fluid{else}container{/if} no-margin no-padding">
			<article>
				{if and(is_set($object)|not, is_set($edit_version)|not)}
					{if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
					<div class="container-margin-left admin-panel container-padding-right container-padding-left float-right">
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
								{def $class = 'col-lg-6 col-md-6 col-sm-6 col-xs-6'}
							{/case}
							{case match=3}
								{def $class = 'col-lg-4 col-md-4 col-sm-4 col-xs-4'}
							{/case}
							{case match=4}
								{def $class = 'col-lg-3 col-md-3 col-sm-3 col-xs-3'}
							{/case}
							{case}
								{def $class = 'col-lg-12 col-md-12 col-sm-12 col-xs-12'}
							{/case}
						{/switch}
						{foreach $products as $product}						
							<div class="{$class}">
								<h4>{$product.name|wash()}</h4>
								<strong>{$product.data_map.price.content.price} {$product.data_map.price.content.currency|l10n( 'currency' )}</strong>
							</div>
						{/foreach}
					{undef $products}
				</aside>
			</article>
		</div>
	</div>
</div>

