{default attribute_base=ContentObjectAttribute}
	{let selected_id_array=$attribute.content}
		<input type="hidden" name="{$attribute_base}_ezselect_selected_array_{$attribute.id}" value="" />
		<select class="form-control" name="{$attribute_base}_ezselect_selected_array_{$attribute.id}[]" {if $attribute.class_content.is_multiselect}multiple{/if}>
			{section var=Options loop=$attribute.class_content.options}
				<option value="{$Options.item.id}" {if $selected_id_array|contains( $Options.item.id )}selected="selected"{/if}>{$Options.item.name|wash( xhtml )}</option>
			{/section}
		</select>
	{/let}
{/default}
