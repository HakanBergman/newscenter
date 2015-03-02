<div class="container">
  <h2>
    <span class="container-padding-left">{$node.name|wash()}</span>
  </h2>
  {if $node.children}
    {include uri="design:newscenter/widget/widget_product_slider.tpl" node=$node}
  {/if}
</div>

