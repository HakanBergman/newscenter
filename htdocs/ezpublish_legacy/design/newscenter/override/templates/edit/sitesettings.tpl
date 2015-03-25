﻿<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
              <h1>Sajtinställningar</h1>
              <p>Här finns alla generella inställningar för hemsidan.</p>
              <div class="form container-padding-left-2">
                                
                {* Site Title *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange namnet på sidan (Tex företagsnamnet).</p>

                <div class="form-group">
                  <label>Sidans titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.site_title}</div>
                </div>

                {* Site Icons *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Ikoner</h3>
                  </div>
                  <div class="pull-right container-padding-top-2">
                    <a class="toggle" data-href="icon" href="#icon">Visa detaljer</a>
                  </div>
                </div>

                <div class="icon hide">
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj hemsidans ikon</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.icon}</div>
                  </div>
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj default Apple ikon (76x76)(</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.icon_apple_default}</div>
                  </div>
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj Apple Tablet ikon (120x120)</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.icon_apple_tablet}</div>
                  </div>
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj Apple Retina ikon (152x152)</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.icon_apple_retina}</div>
                  </div>                 
                  
                </div>                                

                {* Site SEO *}

                <div class="col-lg-12 no-margin no-padding">                  
                  <div class="pull-left"><h3 class="clear">SEO - Inställningar</h3></div>
                  <div class="pull-right container-padding-top-2"><a class="toggle" data-href="seo" href="#seo">Visa detaljer</a></div>
                </div>
                
                <p class="clear">Ställ in beskrivning och de sökord som du vill ska komma upp i organiska resultatet (Google, Bing, med flera).</p>

                <div class="seo hide">
                  <div class="form-group">
                    <label>Beskrivning av företaget (max 255 tecken)</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.seo_description}</div>
							    </div>

                  <div class="form-group">
                    <label>Sökord (Ange max 4-5 stycken, separerade med ",")</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.seo_tags}</div>
                  </div>
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

                <p class="clear">Ange bakgrundsfärg, länkfärg, textfärg, font-storlek och font-familj.</p>

                <div class="colors hide">
                  <div class="form-group">
                    <label>Välj bakgrundsfärg</label>
                    <div class="col-lg-12">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-black" data-hex="#000"></span>
                        <span class="color thumbnail bg-granate min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-granate" data-hex="#570900"></span>
                        <span class="color thumbnail bg-tidningen-se min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-tidningen-se" data-hex="#004389"></span>
                        <span class="color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-longdrink-blue" data-hex="#4BC6D1"></span>
                        <span class="color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beer-brown" data-hex="#DE910b"></span>
                        <span class="color thumbnail bg-dynamite-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-orange" data-hex="#F5A818"></span>
                        <span class="color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-green" data-hex="#D4D977"></span>
                        <span class="color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige" data-hex="#DECC9E"></span>
                        <span class="color thumbnail bg-beige-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-brown" data-hex="#DEDEB4"></span>
                        <span class="color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-pink" data-hex="#F9DADD"></span>
                        <span class="color thumbnail bg-beige-yellow min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-yellow" data-hex="#FFFFD1"></span>
                        <span class="color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-grey" data-hex="#EEE"></span>
                        <span class="color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-white" data-hex="#FFF"></span>
                      </div>
                      <div class="background-picked-color hide">Vald färg <span class="color"></span>
                    </div>
                      <div class="background-saved-color hide">{attribute_edit_gui attribute=$object.data_map.background_color}</div>
                    </div>
                  </div>
                </div>

                {* Save Settings *}

                <div class="buttonblock pull-right container-padding-top-2 clear">
                  <button type="submit" name="PublishButton" class="btn btn-primary">Spara ändringar</button>
                  <button type="submit" name="DiscardButton" class="btn btn-link">Avbryt</button>
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
