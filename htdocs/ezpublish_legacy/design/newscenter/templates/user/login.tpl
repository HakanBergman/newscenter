<div class="container-fluid">
  <div class="container">
    <div class="col-lg-12 container-padding-top-2">
      <form method="post" action="{'/user/login/'|ezurl('no', 'full')}" name="loginform">
        {cache-block keys=$uri_string expiry=5}
          {if $User:warning.bad_login}
            <div class="alert alert-danger" role="alert">
              <h2>{"Could not login"|i18n("design/ezdemo/user/login")}</h2>
              <ul>
                <li>{"A valid username and password is required to login."|i18n("design/ezdemo/user/login")}</li>
              </ul>
            </div>
          {/if}
       {/cache-block}

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