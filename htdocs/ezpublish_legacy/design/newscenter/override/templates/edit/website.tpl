<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Block - Webbsida')}<h1>{$object.name|wash()}</h1>{else}<h1>{$object.name|wash()}</h1>{/if}
              <h2>Webbsida</h2>
              <div class="form container-padding-left-2">

                {* Website Template To Use *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left">
                    <h3 class="clear">Webbsida - Välj mall</h3>
                  </div>
                </div>

                <p class="clear">Här väljs den mall som ska användas för att visa ut innehållet.</p>

                <div class="form-group">
                  <label>Välj den plugin som ska användas</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.template}</div>
                </div>
                
                <p class="clear">Storlek på en dator.</p>

                <div class="form-group">
                  <label>Välj hur ytan ska presenteras när användaren surfar på en dator.</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size_desktop}</div>
                </div>

                <p class="clear">Storlek på en surfplatta.</p>

                <div class="form-group">
                  <label>Välj hur ytan ska presenteras när användaren surfar på en surfplatta.</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size_tablet}</div>
                </div>

                <p class="clear">Storlek på en mobiltelefon.</p>

                <div class="form-group">
                  <label>Välj hur ytan ska presenteras när användaren surfar i mobilen.</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.zone_size_phone}</div>
                </div>

                <p class="clear">Välj om brödsmulan ska visas ut.</p>

                <div class="form-group">
                  <label>Visa ut brödsmulan</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.show_breadcrumb}</div>
                </div>

                <hr class="border-solid-black" />

                {* Website Title *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange namnet på webbsidan (tex Om Oss, Rådgivning, Regelverk etc).</p>

                <div class="form-group">
                  <label>Titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.name}</div>
                </div>

                {* Website Intro *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Ingress</h3></div>
                </div>

                <p class="clear">Här kan du ange en ingress.</p>

                <div class="form-group">
                  <label>Ingress</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.intro}</div>
                </div>

                {* Website Body *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Brödtext</h3></div>
                </div>

                <p class="clear">Här kan du ange en brödtext.</p>

                <div class="form-group">
                  <label>Ingress</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.body}</div>
                </div>

                {* Website Summary *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Summering</h3></div>
                </div>

                <p class="clear">Här kan du ange en summering.</p>

                <div class="form-group">
                  <label>Ingress</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.summary}</div>
                </div>

               {* Website Image *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Bild</h3></div>
                </div>

                <p class="clear">Här kan du publicera en bild som ska visas på sidan.</p>

                <div class="form-group clear">
					<div>{attribute_edit_gui attribute=$object.data_map.image}</div>
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
