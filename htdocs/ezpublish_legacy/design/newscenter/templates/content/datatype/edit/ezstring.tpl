{default attribute_base='ContentObjectAttribute' html_class='full' css_class=''}
<input type="text" class="form-control {$attribute.contentclass_attribute_identifier}" name="{$attribute_base}_ezstring_data_text_{$attribute.id}" {/if}placeholder="" value="{$attribute.data_text|wash( xhtml )}" />
{/default}

