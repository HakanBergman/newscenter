{default attribute_base='ContentObjectAttribute'}
	{let attribute_content=$attribute.content}

		{* Current Image *}
		<div class="col-lg-12 container-padding-top container-padding-left">
			{if $attribute_content.original.is_valid}
				<div class="col-lg-12">
					<div class="pull-left">
						{attribute_view_gui image_class=ezini( 'ImageSettings', 'DefaultEditAlias', 'content.ini' ) attribute=$attribute}
					</div>
					<div class="pull-right">
						<button type="submit" class="btn btn-danger" name="CustomActionButton[{$attribute.id}_delete_image]" value="{'Remove image'|i18n( 'design/standard/content/datatype' )}">Ta bort bild</button>
					</div>
				</div>
				{* Alternative image text. *}
				<div class="col-lg-12">
					<label for="logo-text">Bildtext (Bör anges, tex företagsnamnet).</label>
					<input id="logo-text" name="{$attribute_base}_data_imagealttext_{$attribute.id}" value="{$attribute_content.alternative_text|wash(xhtml)}" type="text" class="form-control" placeholder="Ange bildtext. Tex företagets namn, fotografens namn eller platsen den är tagen." />
				</div>
			{else}
				<p class="clear">Ingen logotyp har laddats upp</p>
				{* New image file for upload. *}
				<div class="col-lg-12">
					<input type="hidden" name="MAX_FILE_SIZE" value="{$attribute.contentclass_attribute.data_int1|mul( 1024, 1024 )}" />
					<input class="btn btn-info text-color-black font-weight-normal" name="{$attribute_base}_data_imagename_{$attribute.id}" type="file" />
				</div>
				<div class="col-lg-12 container-padding-top">
					<input id="logo-text" name="{$attribute_base}_data_imagealttext_{$attribute.id}" value="{$attribute_content.alternative_text|wash(xhtml)}" type="text" class="form-control" placeholder="Ange bildtext. Tex företagets namn, fotografens namn eller platsen den är tagen." />
				</div>
			{/if}
		</div>

	{/let}
{/default}


