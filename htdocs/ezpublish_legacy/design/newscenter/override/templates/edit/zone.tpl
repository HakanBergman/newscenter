﻿<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Zon - Standard')}<h1>{$object.name|wash()}</h1>{else}<h1>Standard Zon - {$object.name|wash()}</h1>{/if}
              <p>Zonegenskaper</p>
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


                {* Site Icons *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Ikoner</h3>
                  </div>
                  <div class="pull-right container-padding-top-2">
                    <a class="toggle" data-href="icon" href="#icon">Visa detaljer</a>
                  </div>
                </div>

                <p>Tänk på att ikonerna måste vara PNG-filer (inte .ICO eller .SVG).</p>
                
                <div class="icon hide">
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj hemsidans ikon (16x16)</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.icon}</div>
                  </div>
                  
                  <div class="form-group container-padding-bottom container-padding-top clear">
                    <label>Välj default Apple ikon (76x76)</label>
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

                {* Site Fonts *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Typsnitt och storlek</h3>
                  </div>
                  <div class="pull-right container-padding-top-2">
                    <a class="toggle" data-href="fonts" href="#fonts">Visa detaljer</a>
                  </div>
                </div>

                <p class="clear">Ange typsnitt och teckenstorlek.</p>

                <div class="fonts hide">
                  <div class="form-group">
                    <div class="col-lg-12">
                      <label>Storlek</label>
                      <div class="col-lg-12 link-color-black">
                        <a href="#22" class="font-size" data-class="font-size-22-px"><span class="font-size-22-px">22</span> <span class="glyphicon glyphicon-text-size font-size-12-px"></span></a>
                        <a href="#20" class="container-padding-left font-size" data-class="font-size-20-px"><span class="font-size-20-px">20</span> <span class="glyphicon glyphicon-text-size font-size-12-px"></span></a>
                        <a href="#18" class="container-padding-left font-size" data-class="font-size-18-px"><span class="font-size-18-px">18</span> <span class="glyphicon glyphicon-text-size font-size-12-px"></span></a>
                        <a href="#16" class="container-padding-left font-size" data-class="font-size-16-px"><span class="font-size-16-px">16</span> <span class="glyphicon glyphicon-text-size font-size-12-px"></span></a>
                        <a href="#14" class="container-padding-left font-size" data-class="font-size-14-px"><span class="font-size-14-px">14</span> <span class="glyphicon glyphicon-text-size font-size-12-px"></span></a>
                      </div>
                      <div class="col-lg-12 no-margin no-padding container-padding-top clear"><label>Typsnitt</label></div>
                      <div class="col-lg-12 link-color-black container-padding-top">
                        <div class="col-lg-3"><a href="#Arial" class="font-family" data-class="font-family-arial"><span class="font-family-arial">Arial</span></a></div>
                        <div class="col-lg-3"><a href="#Bookman-old" class="container-padding-left font-family" data-class="font-family-bookman-old"><span class="container-padding-left font-family-bookman-old">Bookman Old</span></a></div>
                        <div class="col-lg-3"><a href="#Comic-sans" class="container-padding-left font-family" data-class="font-family-comic-sans"><span class="container-padding-left font-family-comic-sans">Comic Sans</span></a></div>
                        <div class="col-lg-3"><a href="#Georgia" class="container-padding-left font-family" data-class="font-family-georgia"><span class="container-padding-left font-family-georgia">Georgia</span></a></div>
                      </div>
                      <div class="col-lg-12 link-color-black container-padding-top">
                        <div class="col-lg-3"><a href="#Tahoma" class="font-family" data-class="font-family-tahoma"><span class="font-family-tahoma">Tahoma</span></a></div>
                        <div class="col-lg-3"><a href="#Times-new-roman" class="container-padding-left font-family" data-class="font-family-times-new-roman"><span class="container-padding-left font-family-times-new-roman">Times New Roman</span></a></div>
                        <div class="col-lg-3"><a href="#Palatino" class="container-padding-left font-family" data-class="font-family-palatino"><span class="container-padding-left font-family-palatino">Palatino</span></a></div>
                        <div class="col-lg-3"><a href="#Verdana" class="container-padding-left font-family" data-class="font-family-verdana"><span class="container-padding-left font-family-verdana">Verdana</span></a></div>
                      </div>
                    </div>
                    <div class="fonts-picked">
                      <div class="col-lg-12 container-padding-left container-padding-top">
                        <div class="col-lg-7">
                          <strong>Nuvarande typsnitt:</strong> <span class="font-family-current"></span> | <strong>Nuvarande storlek:</strong> <span class="font-size-current"></span>
                        </div>
                        <div class="col-lg-5">
                          <div class="pull-right">
                            <strong>Valt typsnitt:</strong> <span class="font-family-picked"></span> | <strong>Vald storlek:</strong> <span class="font-size-picked"></span>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-12 container-padding-left">
                        <div class="font-family-saved hide">{attribute_edit_gui attribute=$object.data_map.font_family}</div>                        
                        <div class="font-size-saved hide">{attribute_edit_gui attribute=$object.data_map.font_size}</div>
                      </div>
                    </div>
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

                    {* Text color *}
                    
                    <div class="col-lg-12 no-margin no-padding container-padding-top clear"><label>Välj textfärg</label></div>
                    <div class="col-lg-12">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="text-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-black" data-hex="#000"></span>
                        <span class="text-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-longdrink-blue" data-hex="#4BC6D1"></span>
                        <span class="text-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-beer-brown" data-hex="#DE910b"></span>
                        <span class="text-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-dynamite-green" data-hex="#D4D977"></span>
                        <span class="text-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-beige" data-hex="#DECC9E"></span>
                        <span class="text-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-pink" data-hex="#F9DADD"></span>
                        <span class="text-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-grey" data-hex="#EEE"></span>
                        <span class="text-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="text-color-white" data-hex="#FFF"></span>
                      </div>
                      <div class="text-picked-color">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="text-saved-color hide">{attribute_edit_gui attribute=$object.data_map.text_color}</div>
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
