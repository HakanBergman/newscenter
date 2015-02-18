<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
	{foreach $node.children as $category}
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h3><a href="{$category.url|ezurl('no', 'full')}" title="{$category.name|wash()}">{$category.name|wash()}</a></h3>
				<div class="{$category.data_map.background_color.data_text} max-height-1">&nbsp;</div>
				{if $category.children}
					<ul>
						{foreach $category.children as $list}
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$list.url|ezurl('no', 'full')}" title="{$list.name|wash()}">{$list.name|wash()}</a></li>
						{/foreach}
					</ul>
				{/if}
			</div>
  {/foreach}
  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="46">Nytt</option>
      </optgroup>
    </select>

    <input type="submit" name="NewButton" value="Skapa ny Produktkategori"></input>
    <input type="hidden" name="ContentLanguageCode" value="swe-SE"></input>
    <input type="hidden" name="HasMainAssignment" value="1"></input>
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}"></input>
    <input type="hidden" name="NodeID" value="{$node.node_id}"></input>
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}"></input>
  </form>
</div>