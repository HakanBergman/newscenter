<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
  <hr></hr>
  {if $node.children}
    <div class="col-lg-12 col-md-12 col-sm-12">
      {foreach $node.children as $product}      								
					<ul>
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$product.url|ezurl('no', 'full')}" title="{$product.name|wash()}">{$product.name|wash()}</a></li>
					</ul>
      {/foreach}
    </div>
  {/if}

  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="21">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa ny Produkt"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>

</div>