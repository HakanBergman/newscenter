<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Block - Superslides')}<h1>{$object.name|wash()}</h1>{else}<h1>Standard Zon - {$object.name|wash()}</h1>{/if}
              <h2>Widget</h2>
              <div class="form container-padding-left-2">
                                
                {* Widget Title *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange namnet på widgeten (tex Bildspel/Bildlista).</p>

                <div class="form-group">
                  <label>Widget-titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.name}</div>
                </div>

                {* Widget Images *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Bilder</h3></div>
                </div>

                <p class="clear">Välj upp till fyra (4) bilder som ska ingå i bildspelet.</p>

				{* Images *}
				<div class="row">
					<div class="container">

						<label class="container-padding-top">Bild 1</label>
						<div>{attribute_edit_gui attribute=$object.data_map.image_one}</div>
						<div class="col-lg-12 no-margin no-padding">
							<label>Övrig information om bilden kan anges här:</label>
							<div>{attribute_edit_gui attribute=$object.data_map.image_caption_one}</div>
						</div>
						
						<div class="col-lg-12 no-margin no-padding container-padding-top">
							<p>Ange en länk om bilden ska länka till annat innehåll. Ingen länk behöver anges men måste börja på http:// eller https:// om den anges.</p>
							<div>{attribute_edit_gui attribute=$object.data_map.link_one}</div>												
							<div class="col-lg-12 no-padding no-margin clear">
								<div class="col-lg-9"><label>Kryssa i rutan om den angivna länken ska öppnas i ett nytt fönster:</label></div>
								<div class="col-lg-3">{attribute_edit_gui attribute=$object.data_map.new_window_one}</div>
							</div>
						</div>

						<label class="container-padding-top">Bild 2</label>
						<div>{attribute_edit_gui attribute=$object.data_map.image_two}</div>
						<div class="col-lg-12 no-margin no-padding">
							<label>Övrig information om bilden kan anges här:</label>
							<div>{attribute_edit_gui attribute=$object.data_map.image_caption_two}</div>
						</div>
						
						<div class="col-lg-12 no-margin no-padding container-padding-top">
							<p>Ange en länk om bilden ska länka till annat innehåll. Ingen länk behöver anges men måste börja på http:// eller https:// om den anges.</p>
							<div>{attribute_edit_gui attribute=$object.data_map.link_two}</div>												
							<div class="col-lg-12 no-padding no-margin clear">
								<div class="col-lg-9"><label>Kryssa i rutan om den angivna länken ska öppnas i ett nytt fönster:</label></div>
								<div class="col-lg-3">{attribute_edit_gui attribute=$object.data_map.new_window_two}</div>
							</div>
						</div>

						<label class="container-padding-top">Bild 3</label>
						<div>{attribute_edit_gui attribute=$object.data_map.image_three}</div>
						<div class="col-lg-12 no-margin no-padding">
							<label>Övrig information om bilden kan anges här:</label>
							<div>{attribute_edit_gui attribute=$object.data_map.image_caption_three}</div>
						</div>
						
						<div class="col-lg-12 no-margin no-padding container-padding-top">
							<p>Ange en länk om bilden ska länka till annat innehåll. Ingen länk behöver anges men måste börja på http:// eller https:// om den anges.</p>
							<div>{attribute_edit_gui attribute=$object.data_map.link_three}</div>												
							<div class="col-lg-12 no-padding no-margin clear">
								<div class="col-lg-9"><label>Kryssa i rutan om den angivna länken ska öppnas i ett nytt fönster:</label></div>
								<div class="col-lg-3">{attribute_edit_gui attribute=$object.data_map.new_window_three}</div>
							</div>
						</div>

						<label class="container-padding-top">Bild 4</label>
						<div>{attribute_edit_gui attribute=$object.data_map.image_four}</div>
						<div class="col-lg-12 no-margin no-padding">
							<label>Övrig information om bilden kan anges här:</label>
							<div>{attribute_edit_gui attribute=$object.data_map.image_caption_four}</div>
						</div>
						
						<div class="col-lg-12 no-margin no-padding container-padding-top">
							<p>Ange en länk om bilden ska länka till annat innehåll. Ingen länk behöver anges men måste börja på http:// eller https:// om den anges.</p>
							<div>{attribute_edit_gui attribute=$object.data_map.link_four}</div>												
							<div class="col-lg-12 no-padding no-margin clear">
								<div class="col-lg-9"><label>Kryssa i rutan om den angivna länken ska öppnas i ett nytt fönster:</label></div>
								<div class="col-lg-3">{attribute_edit_gui attribute=$object.data_map.new_window_four}</div>
							</div>
						</div>

					</div>
				</div>

				{* Widget Size *}
				<div class="row">
					<div class="container">
						<h3 class="clear">Widgetens storlek</h3>
						<p class="clear">Ange hur stor procent av sidan som zonen ska ta upp (default är 100%).</p>
						<div class="col-lg-12">{attribute_edit_gui attribute=$object.data_map.widget_size}</div>
					</div>
				</div>

				{* Widget Priority *}

                <div class="col-lg-12 no-margin no-padding clear">
                  <div class="pull-left"><h3 class="clear">Widgetens prioritet</h3></div>
                </div>

                <p class="clear">Ange i vilken ordning widgets ska visas ut. Låg prioritet visas ut först, dvs 1, 2, 3, 4 osv.</p>

                <div class="form-group">
                  <label>Widget prioritet</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.priority}</div>
                </div>

                {* Save Settings *}

                <div class="buttonblock pull-right container-padding-top-2 clear">
                  <button type="submit" name="PublishButton" class="btn btn-primary">Spara ändringar</button>
                  <button type="submit" name="DiscardButton" class="btn btn-default">Avbryt</button>
                  <input type="hidden" name="DiscardConfirm" value="0" />
                  <input type="hidden" name="MainNodeID" value="{$main_node_id}" />
                </div>

              </div>
            </article>
        </div>
      </div>

    </form>
  </div>
</div>
