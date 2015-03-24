﻿<div class="container">
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
                  <div class="pull-left"><h3 class="clear">Meny - Inställningar</h3></div>
                  <div class="pull-right container-padding-top-2"><a class="toggle" data-href="menu-color" href="#menu-color">Visa detaljer</a></div>
                </div>
                
                <p class="clear">Ladda upp logotyp, ställ in bakgrundsfärg, länkfärg, länkstorlek och andra saker som ska finnas i menyn.</p>

                <div class="menu-color hide">
                  <div class="form-group container-padding-left">
                    <label>Logotyp</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.logotype}</div>
							    </div>

                  <div class="form-group">
                    <label>Sökord (Ange max 4-5 stycken, separerade med ",").</label>
                    <div>{attribute_edit_gui attribute=$object.data_map.seo_tags}</div>
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
