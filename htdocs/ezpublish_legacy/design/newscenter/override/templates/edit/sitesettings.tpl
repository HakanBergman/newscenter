<div class="container">
<div class="content-edit">
    <div class="class-file">

    <form enctype="multipart/form-data" method="post" action={concat( "/content/edit/", $object.id, "/", $edit_version, "/", $edit_language|not|choose( concat( $edit_language, "/" ), '' ) )|ezurl}>


    <div class="buttonblock">
        <input class="defaultbutton" type="submit" name="PublishButton" value="Spara ändringar" />
        <input class="button" type="submit" name="DiscardButton" value="Avbryt" />
        <input type="hidden" name="DiscardConfirm" value="0" />
    </div>

    <div class="attribute-header">
        <h1 class="long">Redigera {$object.name|wash()}</h1>
    </div>

    {include uri="design:content/edit_validation.tpl"}

    <input type="hidden" name="MainNodeID" value="{$main_node_id}" />

    {include uri="design:content/edit_attribute.tpl"}

    <div class="buttonblock">
        <input class="defaultbutton" type="submit" name="PublishButton" value="Spara ändringar" />
        <input class="button" type="submit" name="DiscardButton" value="Avbryt" />
        <input type="hidden" name="DiscardConfirm" value="0" />
    </div>

    </form>

    </div>
</div>
</div>



{def $company = fetch('content', 'node', hash('node_id', ezini('SiteSettings', 'homenode', 'site.ini.append.php')))}
{def $user = fetch('user', 'current_user')}
  {if and($user.is_logged_in, $user.contentobject.current.parent_nodes.0|contains($company.node_id))}
  <div class="container">
	    <div class="row">
		    <div class="col-lg-12 container-padding-left-4 container-padding-right-4">
          <article>
            <h1>Sajtinställningar</h1>
            {$company.object.versions|count()}
            <form name="editform" id="editform" enctype="multipart/form-data" method="post" action={concat( '/content/edit/', $company.contentobject_id, '/', $company.object.current_version, '/swe-se')|ezurl('no', 'full')}>
              <h3>SEO - Inställningar</h3>
              <div class="form-group">
                <label>Beskrivning av företaget (max 255 tecken)</label>
                <div>{attribute_edit_gui attribute=$company.data_map.seo_description}</div>
              </div>
              <div class="buttonblock">
                <input class="defaultbutton" type="submit" name="PublishButton" value="Skicka till publicering" title="Publish the contents of the draft that is being edited. The draft will become the published version of the object.">
                <input class="defaultbutton" type="submit" name="PublishButton" value="{'Send for publishing'|i18n( 'design/ezdemo/content/edit' )}" title="{'Publish the contents of the draft that is being edited. The draft will become the published version of the object.'|i18n( 'design/ezdemo/content/edit' )}" />
                <input class="button" type="submit" name="StoreButton" value="{'Store draft'|i18n( 'design/ezdemo/content/edit' )}" title="{'Store the contents of the draft that is being edited and continue editing. Use this button to periodically save your work while editing.'|i18n( 'design/ezdemo/content/edit' )}" />
                <input class="button" type="submit" name="StoreExitButton" value="{'Store draft and exit'|i18n( 'design/ezdemo/content/edit' )}" title="{'Store the draft that is being edited and exit from edit mode. Use when you need to exit your work and return later to continue.'|i18n( 'design/ezdemo/content/edit' )}" />
                <input class="button" type="submit" name="DiscardButton" value="{'Discard draft'|i18n( 'design/ezdemo/content/edit' )}" title="{'Discard the draft that is being edited. This will also remove the translations that belong to the draft (if any).'|i18n( 'design/ezdemo/content/edit' ) }" />
                <input type="hidden" name="DiscardConfirm" value="0" />
                <input type="hidden" name="RedirectIfDiscarded" value="{if ezhttp_hasvariable( 'LastAccessesURI', 'session' )}{ezhttp( 'LastAccessesURI', 'session' )}{/if}" />
                <input type="hidden" name="RedirectURIAfterPublish" value="/Sajtinstaellningar" />
              </div>            
            </form>
          </article>
		    </div>
	    </div>
    </div>
  {/if}
{undef $company $user}