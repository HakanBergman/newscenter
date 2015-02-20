<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
	{foreach $node.children as $category}
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h3>
          <a href="{$category.url|ezurl('no', 'full')}" title="{$category.name|wash()}">{$category.name|wash()}</a>
          <a href="/content/edit/{$category.contentobject_id}" title="Redigera {$category.name|wash()}">Redigera {$category.name|wash()}</a>
          <form method="post" action="/content/action">
            <input type="hidden" name="TopLevelNode" value="{$category.node_id}"></input>
            <input type="hidden" name="ContentNodeID" value="{$category.node_id}"></input>
            <input type="hidden" name="ContentObjectID" value="{$category.contentobject_id}"></input>            
            <input class="button" type="submit" name="ActionRemove" value="Radera {$category.name|wash()}" title="Radera det här objektet."></input>
          </form>
        </h3>
				<div class="{$category.data_map.background_color.data_text} max-height-1">&nbsp;</div>
				{if $category.children}
					<ul>
						{foreach $category.children as $list}
							<li class="link-color-beige-hover">
                <a class="font-weight-normal" href="{$list.url|ezurl('no', 'full')}" title="{$list.name|wash()}">{$list.name|wash()}</a>
                <a href="/content/edit/{$list.contentobject_id}" title="Redigera {$list.name|wash()}">Redigera {$list.name|wash()}</a>
                <form method="post" action="/content/action">
                  <input type="hidden" name="TopLevelNode" value="{$list.node_id}"></input>
                  <input type="hidden" name="ContentNodeID" value="{$list.node_id}"></input>
                  <input type="hidden" name="ContentObjectID" value="{$list.contentobject_id}"></input>
                  <input class="button" type="submit" name="MoveNodeButton" value="Flytta" title="Flytta till annan plats."></input>
                  <input class="button" type="submit" name="ActionRemove" value="Radera {$list.name|wash()}" title="Radera det här objektet."></input>
                </form>
              </li>
						{/foreach}
					</ul>
				{/if}
			</div>
  {/foreach}


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