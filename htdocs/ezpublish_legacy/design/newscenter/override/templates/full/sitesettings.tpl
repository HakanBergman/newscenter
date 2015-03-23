{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}

  <div class="container thumbnail">
	  <div class="row">
		  <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
        <article>
          <h1>Sajtinställningar</h1>
          <form name="editform" id="editform" enctype="multipart/form-data" method="post" action={concat( '/content/edit/', $company.contentobject_id='', '/', $edit_version='', '/', $edit_language|not|choose=''( concat=''( $edit_language='', '/' ), '/' ), $is_translating_content|not|choose=''( concat=''( $from_language='', '/' ), '' ) )|ezurl=''}>
            <h2>SEO - Inställningar</h2>
            <label>Beskrivning av sidan (max 255 tecken)</label>
            {attribute_edit_gui attribute=$company.data_map.seo_description}
            <div class="buttonblock">
              <input class="defaultbutton" type="submit" name="PublishButton" value="{'Send for publishing'|i18n( 'design/ezdemo/content/edit' )}" title="{'Publish the contents of the draft that is being edited. The draft will become the published version of the object.'|i18n( 'design/ezdemo/content/edit' )}" />
              <input class="button" type="submit" name="StoreButton" value="{'Store draft'|i18n( 'design/ezdemo/content/edit' )}" title="{'Store the contents of the draft that is being edited and continue editing. Use this button to periodically save your work while editing.'|i18n( 'design/ezdemo/content/edit' )}" />
              <input class="button" type="submit" name="StoreExitButton" value="{'Store draft and exit'|i18n( 'design/ezdemo/content/edit' )}" title="{'Store the draft that is being edited and exit from edit mode. Use when you need to exit your work and return later to continue.'|i18n( 'design/ezdemo/content/edit' )}" />
              <input class="button" type="submit" name="DiscardButton" value="{'Discard draft'|i18n( 'design/ezdemo/content/edit' )}" title="{'Discard the draft that is being edited. This will also remove the translations that belong to the draft (if any).'|i18n( 'design/ezdemo/content/edit' ) }" />
              <input type="hidden" name="DiscardConfirm" value="0" />
              <input type="hidden" name="RedirectIfDiscarded" value="{if ezhttp_hasvariable( 'LastAccessesURI', 'session' )}{ezhttp( 'LastAccessesURI', 'session' )}{/if}" />
              <input type="hidden" name="RedirectURIAfterPublish" value="{if ezhttp_hasvariable( 'LastAccessesURI', 'session' )}{ezhttp( 'LastAccessesURI', 'session' )}{/if}" />
            </div>            
          </form>
        </article>
		  </div>
	  </div>
  </div>

{undef $company}