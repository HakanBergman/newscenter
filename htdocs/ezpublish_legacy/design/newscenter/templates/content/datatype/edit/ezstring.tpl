{default attribute_base='ContentObjectAttribute' html_class='full'}
<input type="text" class="form-control" name="{$attribute_base}_ezstring_data_text_{$attribute.id}"{if $css_class} class="{$css_class}" {/if}placeholder="" value="{$attribute.data_text|wash( xhtml )}" />
{/default}

