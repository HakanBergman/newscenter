{default attribute_base=ContentObjectAttribute}

{if ne( $attribute_base, 'ContentObjectAttribute' )}
    {def $id_base = concat( 'ezcoa-', $attribute_base, '-', $attribute.contentclassattribute_id, '_', $attribute.contentclass_attribute_identifier )}
{else}
    {def $id_base = concat( 'ezcoa-', $attribute.contentclassattribute_id, '_', $attribute.contentclass_attribute_identifier )}
{/if}

{* URL. *}
<div class="col-lg-12 clear">
    <div class="float-left min-width-3-em"><label for="{$id_base}_url">Fyll i länken här:</label></div>
    <input id="{$id_base}_url" class="form-control" type="text" size="70" name="{$attribute_base}_ezurl_url_{$attribute.id}" value="{$attribute.content|wash( xhtml )}" />
</div>

{* Text. *}
<div class="col-lg-12 clear">
    <div class="float-left min-width-3-em"><label for="{$id_base}_text">Ange en SEO-text för denna länk:</label></div>
    <input id="{$id_base}_text" class="form-control" type="text" size="70" name="{$attribute_base}_ezurl_text_{$attribute.id}" value="{$attribute.data_text|wash( xhtml )}" />
</div>

{/default}
