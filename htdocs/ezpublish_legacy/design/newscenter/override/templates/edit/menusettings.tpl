<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
              <h1>Menyinställningar</h1>
              <p>Här finns alla inställningar för menyn.</p>
              <div class="form container-padding-left-2">
                                
                {* Menu Plugin To Use *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Meny - Plugin-inställning</h3></div>
                </div>

                <p class="clear">Här väljs den plugin som ska användas för att generera menyn och dess innehåll.</p>

                <div class="form-group">
                  <label>Välj den plugin som ska användas</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.menu_plugin}</div>

                </div>

                <hr class="border-solid-black" />

                {* Meny Settings *}
                
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Logotyp</h3></div>
                  <div class="pull-right container-padding-top-2"><a class="toggle" data-href="menu-color" href="#menu-color">Visa detaljer</a></div>
                </div>
                
                <p class="clear">Ladda upp logotyp.</p>

                <div class="menu-color hide">
                  <div class="form-group container-padding-left">
                    <label>Logotyp</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.logotype}</div>
							    </div>
                </div>

                <hr class="border-solid-black" />

                {* Site Colors *}
                
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Färginställningar</h3>
                  </div>
                  <div class="pull-right container-padding-top-2">
                    <a class="toggle" data-href="colors" href="#colors">Visa detaljer</a>
                  </div>
                </div>

                <p class="clear">Ange bakgrundsfärger och länkfärg.</p>

                <div class="colors hide">
                  <div class="form-group">

                    {* Background color - Menu *}
                    <div class="col-lg-12 clear">
                      <label class="clear">Välj bakgrundsfärg (Logotyp och sökruta).</label>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="background-logotype-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-black" data-hex="#000"></span>
                        <span class="background-logotype-color thumbnail bg-granate min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-granate" data-hex="#570900"></span>
                        <span class="background-logotype-color thumbnail bg-careit min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-careit" data-hex="#6770461"></span>
                        <span class="background-logotype-color thumbnail bg-tidningen-se min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-tidningen-se" data-hex="#004389"></span>
                        <span class="background-logotype-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-longdrink-blue" data-hex="#4BC6D1"></span>
                        <span class="background-logotype-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beer-brown" data-hex="#DE910b"></span>
                        <span class="background-logotype-color thumbnail bg-dynamite-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-orange" data-hex="#F5A818"></span>
                        <span class="background-logotype-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-dynamite-green" data-hex="#D4D977"></span>
                        <span class="background-logotype-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige" data-hex="#DECC9E"></span>
                        <span class="background-logotype-color thumbnail bg-beige-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-brown" data-hex="#DEDEB4"></span>
                        <span class="background-logotype-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-pink" data-hex="#F9DADD"></span>
                        <span class="background-logotype-color thumbnail bg-beige-yellow min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-beige-yellow" data-hex="#FFFFD1"></span>
                        <span class="background-logotype-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-grey" data-hex="#EEE"></span>
                        <span class="background-logotype-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-white" data-hex="#FFF"></span>
                      </div>
                      <div class="background-logotype-picked-color">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="background-logotype-saved-color hide">{attribute_edit_gui attribute=$object.data_map.background_color_logotype}</div>
                    </div>                    

                    {* Background color - Logotype *}
                    <div class="col-lg-12 clear container-padding-top">
                      <label class="clear">Välj bakgrundsfärg (Menyn).</label>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="background-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-black" data-hex="#000"></span>
                        <span class="background-color thumbnail bg-granate min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-granate" data-hex="#570900"></span>
                        <span class="background-color thumbnail bg-careit min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="bg-careit" data-hex="#6770461"></span>
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
                      <div class="background-picked-color hide">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="background-saved-color hide">{attribute_edit_gui attribute=$object.data_map.background_color}</div>
                    </div>

                    {* Link color *}
                    <div class="col-lg-12 clear container-padding-top">
                      <label class="clear">Välj länkfärg</label>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="link-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-black" data-hex="#000"></span>
                        <span class="link-color thumbnail bg-wine-red min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-wine-red" data-hex="#821f1f"></span>
                        <span class="link-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-longdrink-blue" data-hex="#4BC6D1"></span>
                        <span class="link-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beer-brown" data-hex="#DE910b"></span>
                        <span class="link-color thumbnail bg-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dark-orange-active" data-hex="#faad41"></span>
                        <span class="link-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dynamite-green" data-hex="#D4D977"></span>
                        <span class="link-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beige" data-hex="#DECC9E"></span>
                        <span class="link-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-pink" data-hex="#F9DADD"></span>
                        <span class="link-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-grey" data-hex="#EEE"></span>
                        <span class="link-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-white" data-hex="#FFF"></span>
                      </div>
                      <div class="link-color-picked-color">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="link-color-saved-color hide">{attribute_edit_gui attribute=$object.data_map.link_color}</div>
                    </div>

                    {* Active color *}
                    <div class="col-lg-12 clear container-padding-top">
                      <label class="clear">Välj aktiv länkfärg. Denna färg används för att besökaren ska se vilken undersida de har besökt.</label>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="active-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-black-active" data-hex="#000"></span>
                        <span class="active-color thumbnail bg-wine-red min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-wine-red-active" data-hex="#821f1f"></span>
                        <span class="active-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-longdrink-blue-active" data-hex="#4BC6D1"></span>
                        <span class="active-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beer-brown-active" data-hex="#DE910b"></span>
                        <span class="active-color thumbnail bg-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dark-orange-active" data-hex="#faad41"></span>
                        <span class="active-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dynamite-green-active" data-hex="#D4D977"></span>
                        <span class="active-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beige-active" data-hex="#DECC9E"></span>
                        <span class="active-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-pink-active" data-hex="#F9DADD"></span>
                        <span class="active-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-grey-active" data-hex="#EEE"></span>
                        <span class="active-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-white-active" data-hex="#FFF"></span>
                      </div>
                      <div class="active-color-picked-color">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="active-color-saved-color hide">{attribute_edit_gui attribute=$object.data_map.link_active_color}</div>
                    </div>

                    {* Hover color *}
                    <div class="col-lg-12 clear container-padding-top">
                      <label class="clear">Välj hover-färg. Denna färg gör att menyn ändrar färg när musen förs över länken.</label>
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <span class="hover-color thumbnail bg-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-black-hover" data-hex="#000"></span>
                        <span class="hover-color thumbnail bg-wine-red min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-wine-red-hover" data-hex="#821f1f"></span>
                        <span class="hover-color thumbnail bg-longdrink-blue min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-longdrink-blue-hover" data-hex="#4BC6D1"></span>
                        <span class="hover-color thumbnail bg-beer-brown min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beer-brown-hover" data-hex="#DE910b"></span>
                        <span class="hover-color thumbnail bg-orange min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dark-orange-hover" data-hex="#faad41"></span>
                        <span class="hover-color thumbnail bg-dynamite-green min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-dynamite-green-hover" data-hex="#D4D977"></span>
                        <span class="hover-color thumbnail bg-beige min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-beige-hover" data-hex="#DECC9E"></span>
                        <span class="hover-color thumbnail bg-pink min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-pink-hover" data-hex="#F9DADD"></span>
                        <span class="hover-color thumbnail bg-grey min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-grey-hover" data-hex="#EEE"></span>
                        <span class="hover-color thumbnail bg-white border-solid-black min-height-2-em min-width-2-em max-width-2-em cursor-pointer float-left container-margin-left" data-color="link-color-white-hover" data-hex="#FFF"></span>
                      </div>
                      <div class="hover-color-picked-color">
                        <strong>Vald färg</strong> <span class="color"></span> | <span class="hex"></span>
                      </div>
                      <div class="hover-color-saved-color hide">{attribute_edit_gui attribute=$object.data_map.link_hover_color}</div>
                    </div>

                  </div>
                </div>

                <hr class="border-solid-black" />

                {* Save Settings *}
                
                <div class="buttonblock pull-right container-padding-top-2">
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
