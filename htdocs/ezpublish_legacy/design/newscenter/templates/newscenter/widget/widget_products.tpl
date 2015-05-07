<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container-padding-top container-padding-right container-padding-left no-margin no-padding">
	<div class="row widget-margin-top widget-products">
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
				<aside>
					{def $products = fetch('content', 'list', hash('parent_node_id', $block.node_id))}
						{switch match=$products|count()}
							{case match=1}
							{/case}
							{case}
								{def $class = 'col-lg-12 col-md-12 col-sm-12 col-xs-12'}
							{/case}
						{/switch}
						{foreach $products as $product}						
							<div class="{$class}">
								<h4>{$product.name|wash()}</h4>
								{$product.data_map.price.content|attribute(show, 1)}
							</div>
						{/foreach}
					{undef $products}
				</aside>
			</article>
		</div>
	</div>
</div>

