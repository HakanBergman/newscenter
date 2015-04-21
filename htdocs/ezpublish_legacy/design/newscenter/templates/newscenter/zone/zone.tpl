{* Fetch the correct Zone Size and store it in a global variable *}
{include uri="design:newscenter/zone/zone_size.tpl" zone=$zone}

<div class="{$#zone_width} no-margin no-padding{if $zone.data_map.background_color.has_content} {$zone.data_map.background_color.data_text}{/if}">
</div>