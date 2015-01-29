{*
<header>
    <div class="container">
        <div class="navbar extra-navi">
            <div class="nav-collapse row">
                {include uri='design:page_header_languages.tpl'}

                {include uri='design:page_header_links.tpl'}
            </div>
        </div>
        <div class="row">
            {include uri='design:page_header_logo.tpl'}

            {include uri='design:page_header_searchbox.tpl'}
        </div>
    </div>
</header>
*}

<header class="bg-white bottom-border-solid-black static">
  <div class="container">

			{* Top Navigation *}
      {include uri="design:newscenter/full/navigation/top-navigation.tpl"}
			require_once("widgets/top-navigation/top-navigation.tpl");

			{* Mobile Navigation *}
			require_once("widgets/navigation/mobile.tpl");

  </div>
</header>
