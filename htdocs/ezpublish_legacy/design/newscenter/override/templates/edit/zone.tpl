<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Zon - Standard')}<h1>{$object.name|wash()}</h1>{else}<h1>Standard Zon - {$object.name|wash()}</h1>{/if}
              <h2>Zonegenskaper</h2>
              <div class="form container-padding-left-2">
                                
                {* Zone Title *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange namnet på zonen (tex Vänsterspalt, Högerspalt, Annons, etc).</p>

                <div class="form-group">
                  <label>Zonens titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.name}</div>
                </div>

				{* Zone Position *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Position</h3></div>
                </div>

                <p class="clear">Välj när zonen ska laddas in (före eller efter innehållet). Välj Startsidan om zonen är skapad för att laddas in på startsidan.</p>

                <div class="form-group">
                  <label>Zonens position</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_position}</div>
                </div>

				{* Zone Fullscreen *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Visa zonen i helskärm (hela sidans bredd) (default: 1140px bred).</h3></div>
                </div>

                <p class="clear">Kryssa i rutan om zonen ska visas ut för hela sidans bredd.</p>

                <div class="form-group">                  
                  <div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="pull-left">
							<label>Visa ut ut zonen i hela sidans bredd:</label>
						</div>
						<div class="pull-right">
							{attribute_edit_gui attribute=$object.data_map.fullscreen}</div>
						</div>
					</div>
                </div>

				{* Zone Size *}

                <div class="col-lg-12 no-margin no-padding clear">
                  <div class="pull-left"><h3 class="clear">Zonens storlek / spaltens storlek</h3></div>
                </div>

                <p class="clear">Ange hur stor procent av sidan som zonen ska ta upp (default är 100%).</p>

                <div class="form-group">
                  <label>Zonens storlek</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size}</div>
                </div>

				{* Zone Priority *}

                <div class="col-lg-12 no-margin no-padding clear">
                  <div class="pull-left"><h3 class="clear">Zonens prioritet</h3></div>
                </div>

                <p class="clear">Ange i vilken ordning zonerna ska visas ut. Låg prioritet visas ut först, dvs 1, 2, 3, 4 osv.</p>

                <div class="form-group">
                  <label>Zonens storlek</label>
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
