﻿<div class="container">
  <div class="content-edit">
    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id="", "/", $edit_version="", "/", $edit_language|not|choose=""( concat=""( $edit_language="", "/" ), '' ) )|ezurl=''}>

      {include uri="design:content/edit_validation.tpl"}

      <div class="row">
        <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
            <article>
			  {if $object.name|wash()|eq('Ny Block - Facebook')}<h1>{$object.name|wash()}</h1>{else}<h1>Standard Zon - {$object.name|wash()}</h1>{/if}
              <h2>Widget</h2>
              <div class="form container-padding-left-2">
                                
                {* Widget Title *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Titel</h3></div>
                </div>

                <p class="clear">Ange namnet på widgeten (tex Facebook).</p>

                <div class="form-group">
                  <label>Widget-titel</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.name}</div>
                </div>

                {* Widget Link *}
                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Länk till Facebook-sidan</h3></div>
                </div>

                <p class="clear">Här måste URL/länk till Facebook-sidan anges. Den länken hittar ni på Facebook.</p>

                <div class="form-group">
                  <label>Facebook-länk</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.fb_link}</div>
                </div>

				{* Widget Fullscreen *}

                <div class="col-lg-12 no-margin no-padding">
                  <div class="pull-left"><h3 class="clear">Visa widget i helskärm (hela sidans bredd) (default: 1140px bred).</h3></div>
                </div>

                <p class="clear">Kryssa i rutan om denna widget ska visas ut för hela sidans bredd.</p>

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

				{* Widget Size *}

                <div class="col-lg-12 no-margin no-padding clear">
                  <div class="pull-left"><h3 class="clear">Widgetens storlek</h3></div>
                </div>

                <p class="clear">Ange hur stor procent av sidan som zonen ska ta upp (default är 100%).</p>

                <div class="form-group">
                  <label>Widgetens storlek</label>
                  <div>{attribute_edit_gui attribute=$object.data_map.widget_size}</div>
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
