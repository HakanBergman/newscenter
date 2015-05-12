

<div class="container">
  <div class="col-lg-12">
    <div class="container-margin-top">
      <div class="container-padding-top-2">
        <p>Du kommer snart tillbaka till föregående sidan. Klicka <a href="{ezhttp().session.FromPage|ezurl('no', 'full')}">här</a> för att komma vidare</p>
        {ezhttp().session.FromPage|ezurl('no', 'full')}
        S
        {ezhttp().session|attribute(show, 1)}
        G
        {ezhttp().get|attribute(show, 1)}
        P
        {ezhttp().post|attribute(show, 1)}
        <script type="text/javascript">
          {literal}
            $(document ).ready(function() {
            {/literal}
              window.location.replace("{ezhttp().session.FromPage|ezurl('no', 'full')}");
              alert("hit");
            {literal}
          });
          {/literal}
        </script>
      </div>
    </div>
  </div>
</div>