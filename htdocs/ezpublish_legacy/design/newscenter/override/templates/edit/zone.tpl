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
							<label>Visa ut zonen i hela sidans bredd:</label>
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
                  <label>Zonens storlek på en datorskärm</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size}</div>
                </div>

                <div class="form-group">
                  <label>Zonens storlek på en surfplatta</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size_tablet}</div>
                </div>

                <div class="form-group">
                  <label>Zonens storlek på en mobiltelefon</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size_cellphone}</div>
                </div>
                                

                {* Zone Priority *}

                <div class="col-lg-12 no-margin no-padding clear">
                  <div class="pull-left"><h3 class="clear">Zonens prioritet</h3></div>
                </div>

                <p class="clear">Ange i vilken ordning zonerna ska visas ut. Låg prioritet visas ut först, dvs 1, 2, 3, 4 osv.</p>

                <div class="form-group">
                  <label>Zonens prioritet</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.priority}</div>
                </div>
                
               {* Site Colors *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Färginställningar</h3>
                  </div>
                  <div class="pull-right container-padding-top-2">
                    <a class="toggle" data-href="colors" href="#colors">Visa detaljer</a>
                  </div>
                </div>

                <p class="clear">Ange bakgrundsfärg, länkfärg och textfärg.</p>

                <div class="colors hide">
                  <div class="form-group">
                    
                    {* Background color *}
                    <label>Välj bakgrundsfärg</label>
                    <div class="col-lg-12">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="background-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-black" data-hex="#000"></span>
                        <span class="background-color thumbnail bg-granate min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-granate" data-hex="#570900"></span>
                        <span class="background-color thumbnail bg-tidningen-se min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-tidningen-se" data-hex="#004389"></span>
                        <span class="background-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-longdrink-blue" data-hex="#4BC6D1"></span>
                        <span class="background-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beer-brown" data-hex="#DE910b"></span>
                        <span class="background-color thumbnail bg-dynamite-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-orange" data-hex="#F5A818"></span>
                        <span class="background-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-green" data-hex="#D4D977"></span>
                        <span class="background-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige" data-hex="#DECC9E"></span>
                        <span class="background-color thumbnail bg-beige-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-brown" data-hex="#DEDEB4"></span>
                        <span class="background-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-pink" data-hex="#F9DADD"></span>
                        <span class="background-color thumbnail bg-beige-yellow min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-yellow" data-hex="#FFFFD1"></span>
                        <span class="background-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-grey" data-hex="#EEE"></span>
                        <span class="background-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-white" data-hex="#FFF"></span>
                      </div>
                      <div class="background-picked-color hide"><strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span></div>
                      <div class="background-saved-color hide">{attribute_edit_gui attribute=$object.data_map.background_color}</div>
                    </div>
                    
                  </div>                    
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
