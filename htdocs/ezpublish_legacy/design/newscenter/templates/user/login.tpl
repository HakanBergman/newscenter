<div class="container-fluid">
  <div class="container">
    <div class="col-lg-12 container-padding-top-2">
      <form method="post" action="{'/user/login/'|ezurl('no', 'full')}" name="loginform">

        {if $User:warning.bad_login}
          <div class="alert alert-danger" role="alert">
            <h2>{"Could not login"|i18n("design/ezdemo/user/login")}</h2>
            <ul>
              <li>{"A valid username and password is required to login."|i18n("design/ezdemo/user/login")}</li>
            </ul>
          </div>
        {else}
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
        {/if}

        {if ezini( 'Session', 'RememberMeTimeout' )}
        <div class="form-group">
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
          <div class="col-lg-12 no-padding">
            <div class="pull-right">
              <button class="btn btn-primary" type="submit" name="LoginButton">Logga in</button>
            </div>
          </div>
        </div>

        <input type="hidden" name="RedirectURI" value="/" />
        
      </form>
    </div>
  </div>
</div>