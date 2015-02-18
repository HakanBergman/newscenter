<div class="container bg-black">
	<h2>{$node.name|wash()}</h2>
  <div class="{$node.data_map.background_color.data_text} max-height-1">&nbsp;</div>
  {if $node.children}
    <div class="col-lg-12 col-md-12 col-sm-12">
      {foreach $node.children as $list}      								
					<ul>
							<li class="link-color-beige-hover"><a class="font-weight-normal" href="{$list.url|ezurl('no', 'full')}" title="{$list.name|wash()}">{$list.name|wash()}</a></li>
					</ul>
      {/foreach}
    </div>
  {/if}
  <form method="post" action="/content/action">
    <select name="ClassID" id="ezwt-create" style="display: none;">
      <optgroup label="Content">
        <option value="47">Nytt</option>
      </optgroup>
    </select>

    <input type="text" name="NewButton" value="Skapa ny Produktlista">
    <input type="hidden" name="ContentLanguageCode" value="swe-SE">
    <input type="hidden" name="HasMainAssignment" value="1">
    <input type="hidden" name="ContentObjectID" value="{$node.contentobject_id}">
    <input type="hidden" name="NodeID" value="{$node.node_id}">
    <input type="hidden" name="ContentNodeID" value="{$node.node_id}">
      
</div>