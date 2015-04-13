<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Block - Kontaktperson')}<h1>{$object.name|wash()}</h1>{else}<h1>{$object.name|wash()}</h1>{/if}
              <h2>Kontaktperson</h2>
              <div class="form container-padding-left-2">
                                
                {* Contact Person Name *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Förnamn Efternamn</h3></div>
                </div>

                <p class="clear">Ange namnet på kontaktpersonen. Både för- och efternamn.</p>

                <div class="form-group">
                  <label>Namn</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.name}</div>
                </div>

                {* Contact Person Title *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange den titel personen har på företaget.</p>

                <div class="form-group">
                  <label>Titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.title}</div>
                </div>

                {* Contact Person Phone *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Telefonnummer</h3></div>
                </div>

                <p class="clear">Ange de telefonnummer som personen har på företaget. Tex (070 - 1234567 / 021 123456) om personen kan nås på 2 nummer.</p>

                <div class="form-group">
                  <label>Titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.cellphone}</div>
                </div>

                {* Contact Person Email *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">E-postadress</h3></div>
                </div>

                <p class="clear">Ange den e-postadress som personen använder på företaget. Tex fornamn.efternamn@bolagsdomän.se</p>

                <div class="form-group">
                  <label>E-postadress</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.email}</div>
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
