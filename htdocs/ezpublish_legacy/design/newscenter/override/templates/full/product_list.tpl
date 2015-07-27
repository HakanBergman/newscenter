<div class="container">
  {include uri="design:newscenter/widget/widget_breadcrumb.tpl"}
  <h2>
    <span class="container-padding-left-05">{$node.name|wash()}</span>
  </h2>
  {if $node.children}
    {include uri="design:newscenter/widget/widget_product_slider.tpl" node=$node}
  {/if}
</div>

