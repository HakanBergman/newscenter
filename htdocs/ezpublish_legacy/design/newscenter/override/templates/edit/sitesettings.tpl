<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
              <h1>Sajtinställningar</h1>
              <p>Här finns alla generella inställningar för hemsidan.</p>
              <div class="form container-padding-left-2">

                <div class="pull-left"><h3 class="clear">SEO - Inställningar</h3></div>
                <div class="pull-right"><a class="btn" href="#seo">Visa detaljer</a></div>
                
                <p>Ställ in beskrivning och de sökord som du vill ska komma upp i organiska resultatet (Google, Bing, med flera).</p>

                    <div id="seo">
                      <div class="form-group">
                        <label>Beskrivning av företaget (max 255 tecken)</label>
                        <div>{attribute_edit_gui attribute=$object.data_map.seo_description}</div>
							        </div>

                      <div class="form-group">
                        <label>Sökord (Ange max 4-5 stycken, separerade med ",").</label>
                        <div>{attribute_edit_gui attribute=$object.data_map.seo_tags}</div>
                      </div>
                    </div>

                  <div class="buttonblock pull-right">
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
