<div class="container-fluid">
  <div class="container">
    <div class="col-lg-12 conatainer-padding-top-2">
      <form method="post" action="{'/user/login/'|ezurl('no', 'full')}" name="loginform">

        {if ezini( 'Session', 'RememberMeTimeout' )}
          <div class="form-group">
            <label for="sel1">Välj mottagare</label>
            <label class="checkbox-inline">
              <input type="checkbox" tabindex="1" name="Cookie" />Kom ihåg mig
            </label>
          </div>
        {/if}

        <div class="form-group">
          <label for="username">Användarnamn</label>
          <input type="text" name="Login" class="form-control" id="username" placeholder="Användarnamn"></input>
        </div>

        <div class="form-group">
          <label for="password">Lösenord</label>
          <input type="password" name="Password" class="form-control" id="password" placeholder="Lösenord"></input>
        </div>


        <div class="form-group">
          <label><a href="{'/user/forgotpassword'|ezurl('no', 'full')}" title="Glömt lösenord? Klicka här">Klicka här om du har glömt ditt lösenord.</a></label>
        </div>

        <div class="form-group clear">
          <div class="col-lg-12 no-padding container-padding-top-2">
            <div class="pull-right">
              <button class="btn btn-primary" type="submit" name="LoginButton">Logga in</button>
            </div>
          </div>
        </div>

        <input type="hidden" name="RedirectURI" value="{$User:redirect_uri|wash}" />
        
      </form>
    </div>
  </div>
</div>

<div class="user-login">

<form method="post" action={"/user/login/"|ezurl} name="loginform">

<div class="attribute-header">
    <h1 class="long">{"Login"|i18n("design/ezdemo/user/login")}</h1>
</div>

{if $User:warning.bad_login}
<div class="warning">
<h2>{"Could not login"|i18n("design/ezdemo/user/login")}</h2>
<ul>
    <li>{"A valid username and password is required to login."|i18n("design/ezdemo/user/login")}</li>
</ul>
</div>
{else}

{if $site_access.allowed|not}
<div class="warning">
<h2>{"Access not allowed"|i18n("design/ezdemo/user/login")}</h2>
<ul>
    <li>{"You are not allowed to access %1."|i18n("design/ezdemo/user/login",,array($site_access.name))}</li>
</ul>
</div>
{/if}

{/if}

<div class="block">
<label for="id1">{"Username"|i18n("design/ezdemo/user/login",'User name')}</label><div class="labelbreak"></div>
<input class="halfbox" type="text" size="10" name="Login" id="id1" value="{$User:login|wash}" tabindex="1" />
</div>

<div class="block">
<label for="id2">{"Password"|i18n("design/ezdemo/user/login")}</label><div class="labelbreak"></div>
<input class="halfbox" type="password" size="10" name="Password" id="id2" value="" tabindex="1" />
</div>
{if ezini( 'SiteSettings', 'AdditionalLoginFormActionURL' )}
    <div class="button-right">
    <a href="{ezini( 'SiteSettings', 'AdditionalLoginFormActionURL' )}">{"Log in to the eZ Publish Administration Interface"|i18n("design/ezdemo/user/login")}</a>
    </div>
{/if}
{if ezini( 'Session', 'RememberMeTimeout' )}
<div class="block">
<input type="checkbox" tabindex="1" name="Cookie" id="id4" /><label for="id4" style="display:inline;">{"Remember me"|i18n("design/ezdemo/user/login")}</label>
</div>
{/if}

<div class="buttonblock">
<input class="defaultbutton" type="submit" name="LoginButton" value="{'Login'|i18n('design/ezdemo/user/login','Button')}" tabindex="1" />
{if ezmodule( 'user/register' )}
    <input class="button" type="submit" name="RegisterButton" id="RegisterButton" value="{'Sign up'|i18n('design/ezdemo/user/login','Button')}" tabindex="1" />
{/if}
</div>

{if ezini( 'SiteSettings', 'LoginPage' )|eq( 'custom' )}
    <p><a href={'/user/forgotpassword'|ezurl}>{'Forgot your password?'|i18n( 'design/ezdemo/user/login' )}</a></p>
{/if}

<input type="hidden" name="RedirectURI" value="{$User:redirect_uri|wash}" />

{if and( is_set( $User:post_data ), is_array( $User:post_data ) )}
  {foreach $User:post_data as $key => $postData}
      <input name="Last_{$key|wash}" value="{$postData|wash}" type="hidden" /><br/>
  {/foreach}
{/if}

</form>

</div>
